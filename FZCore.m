#import "FZCore.h"
#import "FZConfig.h"
#import "FZUI.h"
#import <objc/runtime.h>
#import <substrate.h>

// The sample hooks three session-manager classes as well as the main-frame
// logic. Originals are kept per class/selector; sharing one IMP slot between
// those classes would corrupt the ABI when the classes implement different
// methods.
typedef struct { Class cls; SEL sel; IMP original; } FZOriginal;
static FZOriginal gOriginals[48];
static NSUInteger gOriginalCount;
static BOOL gInstalled;
static NSMapTable *gStates;

static IMP FZOriginalFor(id object, SEL sel) {
    Class actual = object ? object_getClass(object) : Nil;
    for (NSInteger i=(NSInteger)gOriginalCount-1; i>=0; --i) {
        if (gOriginals[i].sel != sel) continue;
        Class c=gOriginals[i].cls;
        if (actual==c || (actual && c && class_isSubclassOfClass(actual,c))) return gOriginals[i].original;
    }
    return NULL;
}
static BOOL FZHook(Class cls, SEL sel, IMP replacement) {
    if (!cls || !class_getInstanceMethod(cls,sel) || gOriginalCount>=48) return NO;
    IMP original=NULL;
    MSHookMessageEx(cls,sel,replacement,&original);
    gOriginals[gOriginalCount++]=(FZOriginal){cls,sel,original};
    return original!=NULL;
}
static id FZCallObject(id self, SEL sel, id arg) {
    IMP imp=FZOriginalFor(self,sel); return imp ? ((id(*)(id,SEL,id))imp)(self,sel,arg) : nil;
}
static NSInteger FZCallInteger(id self, SEL sel, NSInteger arg, BOOL hasArg) {
    IMP imp=FZOriginalFor(self,sel); if (!imp) return 0;
    return hasArg ? ((NSInteger(*)(id,SEL,NSInteger))imp)(self,sel,arg) : ((NSInteger(*)(id,SEL))imp)(self,sel);
}
static void FZCallVoid(id self, SEL sel) { IMP imp=FZOriginalFor(self,sel); if (imp) ((void(*)(id,SEL))imp)(self,sel); }
static void FZCallBoolVoid(id self, SEL sel, BOOL value) { IMP imp=FZOriginalFor(self,sel); if (imp) ((void(*)(id,SEL,BOOL))imp)(self,sel,value); }

static NSMutableDictionary *FZState(id logic) {
    if (!gStates) gStates=[NSMapTable weakToStrongObjectsMapTable];
    NSMutableDictionary *s=[gStates objectForKey:logic];
    if (!s) { s=[@{@"group":FZCurrentGroup(),@"rows":@[],@"names":@[],@"valid":@NO} mutableCopy]; [gStates setObject:s forKey:logic]; }
    return s;
}
static void FZSnapshot(id logic) {
    NSMutableDictionary *state=FZState(logic); NSString *group=state[@"group"] ?: FZCurrentGroup();
    NSInteger count=FZCallInteger(logic,@selector(getSessionCountForSection:),0,YES); if (count<0 || count>100000) count=0;
    NSMutableArray *rows=[NSMutableArray array], *names=[NSMutableArray array], *sessions=[NSMutableArray array];
    SEL infoSel=@selector(getSessionInfoAtIndexPath:);
    for (NSInteger i=0;i<count;i++) {
        NSIndexPath *path=[NSIndexPath indexPathForRow:i inSection:0]; id session=FZCallObject(logic,infoSel,path);
        if (session) [sessions addObject:session];
        if (!session || FZMatches(session,group)) { [rows addObject:@(i)]; [names addObject:FZSessionUser(session) ?: @""]; }
    }
    FZSetRuntimeSessions(sessions); state[@"rows"]=rows; state[@"names"]=names; state[@"valid"]=@YES;
}
static NSInteger FZMapRow(id logic, NSInteger row) {
    NSMutableDictionary *state=FZState(logic); if (![state[@"valid"] boolValue]) FZSnapshot(logic);
    NSArray *rows=state[@"rows"]; return row>=0 && row<(NSInteger)rows.count ? [rows[row] integerValue] : NSIntegerMax;
}
static NSInteger FZLogicCount(id self, SEL cmd, NSInteger section) { FZSnapshot(self); return [FZState(self)[@"rows"] count]; }
static id FZLogicInfo(id self, SEL cmd, id path) {
    NSInteger row=[path respondsToSelector:@selector(row)]?[path row]:0, real=FZMapRow(self,row); if(real==NSIntegerMax)return nil;
    NSIndexPath *mapped=[NSIndexPath indexPathForRow:real inSection:[path respondsToSelector:@selector(section)]?[path section]:0];
    return FZCallObject(self,@selector(getSessionInfoAtIndexPath:),mapped);
}
static id FZLogicBase(id self, SEL cmd, id path) {
    NSInteger row=[path respondsToSelector:@selector(row)]?[path row]:0, real=FZMapRow(self,row); if(real==NSIntegerMax)return nil;
    NSIndexPath *mapped=[NSIndexPath indexPathForRow:real inSection:[path respondsToSelector:@selector(section)]?[path section]:0];
    return FZCallObject(self,@selector(getSessionBaseInfoAtIndexPath:),mapped);
}
static id FZLogicCell(id self, SEL cmd, id path) {
    NSInteger row=[path respondsToSelector:@selector(row)]?[path row]:0, real=FZMapRow(self,row); if(real==NSIntegerMax)return nil;
    NSIndexPath *mapped=[NSIndexPath indexPathForRow:real inSection:[path respondsToSelector:@selector(section)]?[path section]:0];
    return FZCallObject(self,@selector(getCellDataAtIndexPath:),mapped);
}
static NSInteger FZLogicReverse(id self, SEL cmd, id user, NSInteger section) {
    FZSnapshot(self); NSArray *names=FZState(self)[@"names"]; NSUInteger i=[names indexOfObject:user]; return i==NSNotFound ? NSIntegerMax : (NSInteger)i;
}

static BOOL FZIsTopSelector(SEL sel) { return sel==@selector(visibleTopSessionCount) || sel==@selector(getTopSessionAtIndex:); }
static SEL FZManagerCountSelector(SEL itemSel) {
    if (itemSel==@selector(getTopSessionAtIndex:)) return @selector(visibleTopSessionCount);
    if (itemSel==@selector(getNormalSessionAtIndex:)) return @selector(visibleNormalSessionCount);
    return @selector(GetSessionCount);
}
static NSArray *FZManagerArray(id manager, BOOL top, SEL itemSel) {
    SEL countSel=FZManagerCountSelector(itemSel); NSInteger count=FZCallInteger(manager,countSel,0,NO); if(count<0||count>100000)count=0;
    IMP getter=FZOriginalFor(manager,itemSel); if(!getter)return @[];
    NSMutableArray *all=[NSMutableArray array]; for(NSInteger i=0;i<count;i++){id s=((id(*)(id,SEL,NSInteger))getter)(manager,itemSel,i);if(s)[all addObject:s];}
    FZSetRuntimeSessions(all); NSMutableArray *filtered=[NSMutableArray array]; NSString *group=FZCurrentGroup();for(id s in all)if(FZMatches(s,group))[filtered addObject:s]; return filtered;
}
static NSInteger FZManagerCount(id self, SEL cmd) {
    SEL itemSel=(cmd==@selector(visibleTopSessionCount))?@selector(getTopSessionAtIndex:):(cmd==@selector(visibleNormalSessionCount)?@selector(getNormalSessionAtIndex:):@selector(GetSessionAtIndex:));
    return [FZManagerArray(self,FZIsTopSelector(cmd),itemSel) count];
}
static id FZManagerItem(id self, SEL cmd, NSInteger index) {
    NSArray *a=FZManagerArray(self,FZIsTopSelector(cmd),cmd); return index>=0&&index<(NSInteger)a.count?a[index]:nil;
}
static void FZManagerReload(id self, SEL cmd) { FZCallVoid(self,cmd); for(id logic in gStates){ NSMutableDictionary*s=[gStates objectForKey:logic];s[@"valid"]=@NO; } FZRefreshAll(); }

static void FZConfigChanged(__unused NSNotification *note) { for(id logic in gStates){NSMutableDictionary*s=[gStates objectForKey:logic];s[@"group"]=FZCurrentGroup();s[@"valid"]=@NO;} FZRefreshAll(); }
static void FZAppear(id self, SEL cmd, BOOL animated) { IMP imp=FZOriginalFor(self,cmd); if(imp)((void(*)(id,SEL,BOOL))imp)(self,cmd,animated); FZInstallUI((UIViewController *)self); }
static void FZLoad(id self, SEL cmd) { FZCallVoid(self,cmd); dispatch_async(dispatch_get_main_queue(),^{FZInstallUI((UIViewController *)self);}); }
static void FZLayout(id self, SEL cmd) { FZCallVoid(self,cmd); FZInstallUI((UIViewController *)self); }
static void FZSettingsAppear(id self, SEL cmd, BOOL animated) { IMP imp=FZOriginalFor(self,cmd);if(imp)((void(*)(id,SEL,BOOL))imp)(self,cmd,animated);FZInstallSettingsEntry((UIViewController *)self); }
static void FZPan(id self, SEL cmd, UIPanGestureRecognizer *gesture) {
    if(gesture.state!=UIGestureRecognizerStateEnded)return; CGFloat x=[gesture translationInView:gesture.view].x;if(fabs(x)<40)return;NSArray*groups=FZVisibleGroups();if(groups.count<2)return;NSUInteger i=0;for(NSUInteger n=0;n<groups.count;n++)if([groups[n][@"name"]isEqual:FZCurrentGroup()]){i=n;break;}BOOL next=x<0;if(FZBool(@"WPPulse_ReverseSwipe",NO))next=!next;NSInteger j=next?(NSInteger)i+1:(NSInteger)i-1;if(j<0||j>=(NSInteger)groups.count){if(!FZBool(@"WPPulse_LoopSwipe",YES))return;j=(j+(NSInteger)groups.count)%(NSInteger)groups.count;}FZSelectGroup(groups[j][@"name"]);NSInteger h=FZInteger(@"WPPulse_HapticLevel",1);if(h>0){UIImpactFeedbackGenerator*g=[[UIImpactFeedbackGenerator alloc]initWithStyle:h>1?UIImpactFeedbackStyleMedium:UIImpactFeedbackStyleLight];[g impactOccurred];}
}
static void FZLong(id self, SEL cmd, UILongPressGestureRecognizer *gesture) { if(gesture.state==UIGestureRecognizerStateBegan){UIViewController*c=(UIViewController*)self;[c.navigationController pushViewController:[WPCustomSettingsPanel new] animated:YES];} }
static void FZAddGestureMethods(Class cls){if(!cls)return;class_addMethod(cls,sel_registerName("fz_handlePan:"),(IMP)FZPan,"v24@0:8@");class_addMethod(cls,sel_registerName("fz_handleLongPress:"),(IMP)FZLong,"v24@0:8@");}
void FZRefreshAll(void){dispatch_async(dispatch_get_main_queue(),^{UIViewController*c=FZTopViewController();FZRefreshUI(c);[c.view setNeedsLayout];});}
void FZInstallHooks(void){if(gInstalled)return;gInstalled=YES;gStates=[NSMapTable weakToStrongObjectsMapTable];NSNotificationCenter*n=[NSNotificationCenter defaultCenter];[n addObserverForName:FZGroupChanged object:nil queue:NSOperationQueue.mainQueue usingBlock:^(__unused NSNotification*x){FZConfigChanged(x);}];[n addObserverForName:FZConfigChanged object:nil queue:NSOperationQueue.mainQueue usingBlock:^(__unused NSNotification*x){FZConfigChanged(x);}];
    Class logic=objc_getClass("MainFrameLogicController");FZHook(logic,@selector(getSessionCountForSection:),(IMP)FZLogicCount);FZHook(logic,@selector(getSessionInfoAtIndexPath:),(IMP)FZLogicInfo);FZHook(logic,@selector(getSessionBaseInfoAtIndexPath:),(IMP)FZLogicBase);FZHook(logic,@selector(getCellDataAtIndexPath:),(IMP)FZLogicCell);FZHook(logic,@selector(indexOfSessionUserName:inSection:),(IMP)FZLogicReverse);
    for(NSString *name in @[@"MainSessionMgr", @"MMNewSessionMgr", @"SessionMgr"]) { Class c=objc_getClass(name.UTF8String);FZHook(c,@selector(visibleTopSessionCount),(IMP)FZManagerCount);FZHook(c,@selector(visibleNormalSessionCount),(IMP)FZManagerCount);FZHook(c,@selector(getTopSessionAtIndex:),(IMP)FZManagerItem);FZHook(c,@selector(getNormalSessionAtIndex:),(IMP)FZManagerItem);FZHook(c,@selector(GetSessionCount),(IMP)FZManagerCount);FZHook(c,@selector(GetSessionAtIndex:),(IMP)FZManagerItem);FZHook(c,@selector(reloadSessions),(IMP)FZManagerReload); }
    Class home=objc_getClass("NewMainFrameViewController");FZAddGestureMethods(home);FZHook(home,@selector(viewDidLoad),(IMP)FZLoad);FZHook(home,@selector(viewDidAppear:),(IMP)FZAppear);FZHook(home,@selector(viewDidLayoutSubviews),(IMP)FZLayout);
    Class settings=objc_getClass("NewSettingViewController");FZHook(settings,@selector(viewDidAppear:),(IMP)FZSettingsAppear);
    Class select=objc_getClass("SessionSelectController");FZHook(select,@selector(viewDidLoad),(IMP)FZLoad);
}
__attribute__((constructor))static void FZInit(void){@autoreleasepool{if(![NSBundle.mainBundle.bundleIdentifier isEqual:@"com.tencent.xin"])return;dispatch_async(dispatch_get_main_queue(),^{FZInstallHooks();});}}
