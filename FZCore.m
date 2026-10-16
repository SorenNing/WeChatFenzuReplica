#import "FZCore.h"
#import "FZConfig.h"
#import "FZUI.h"
#import <objc/runtime.h>
#import <substrate.h>
#include <string.h>

// The sample hooks three session-manager classes as well as the main-frame
// logic. Originals are kept per class/selector; sharing one IMP slot between
// those classes would corrupt the ABI when the classes implement different
// methods.
typedef struct { Class cls; SEL sel; IMP original; } FZOriginal;
static FZOriginal gOriginals[48];
static NSUInteger gOriginalCount;
static BOOL gInstalled;
static NSMapTable *gStates;
static __thread unsigned gRawReadDepth;

static IMP FZOriginalFor(id object, SEL sel) {
    Class actual = object ? object_getClass(object) : Nil;
    if (!actual) return NULL;
    for (NSInteger i=(NSInteger)gOriginalCount-1; i>=0; --i) {
        if (gOriginals[i].sel == sel && gOriginals[i].cls == actual) return gOriginals[i].original;
    }
    for (NSInteger i=(NSInteger)gOriginalCount-1; i>=0; --i) {
        if (gOriginals[i].sel != sel) continue;
        for (Class c=class_getSuperclass(actual); c; c=class_getSuperclass(c)) {
            if (c == gOriginals[i].cls) return gOriginals[i].original;
        }
    }
    return NULL;
}
static BOOL FZHook(Class cls, SEL sel, IMP replacement) {
    Method method=cls?class_getInstanceMethod(cls,sel):NULL; if (!method || gOriginalCount>=48) return NO;
    const char *types=method_getTypeEncoding(method); const char *name=sel_getName(sel); NSUInteger args=method_getNumberOfArguments(method);
    BOOL objectReturn=(types&&types[0]=='@'), voidReturn=(types&&types[0]=='v'), integerReturn=(types&&(types[0]=='q'||types[0]=='Q'||types[0]=='i'||types[0]=='I'));
    if (strstr(name,"AtIndexPath") && (args!=3 || !objectReturn)) return NO;
    if (strstr(name,"numberOfRowsInSection") && (args!=4 || !integerReturn)) return NO;
    if (strstr(name,"Count") && !strstr(name,"AtIndex") && (args!=2 || !integerReturn)) return NO;
    if (strstr(name,"reloadSessions") && (args!=2 || !voidReturn)) return NO;
    IMP original=NULL; MSHookMessageEx(cls,sel,replacement,&original); if(!original)return NO;
    gOriginals[gOriginalCount++]=(FZOriginal){cls,sel,original}; return YES;
}
static BOOL FZHookVoid0(Class cls, SEL sel, IMP replacement) {
    Method method=cls?class_getInstanceMethod(cls,sel):NULL; const char *types=method?method_getTypeEncoding(method):NULL;
    if(!method || !types || method_getNumberOfArguments(method)!=2 || types[0]!='v') return NO;
    return FZHook(cls,sel,replacement);
}
static BOOL FZHookVoid1(Class cls, SEL sel, IMP replacement) {
    Method method=cls?class_getInstanceMethod(cls,sel):NULL; const char *types=method?method_getTypeEncoding(method):NULL;
    if(!method || !types || method_getNumberOfArguments(method)!=3 || types[0]!='v') return NO;
    return FZHook(cls,sel,replacement);
}
static BOOL FZHookVoid2Objects(Class cls, SEL sel, IMP replacement) {
    Method method=cls?class_getInstanceMethod(cls,sel):NULL; const char *types=method?method_getTypeEncoding(method):NULL;
    if(!method || !types || method_getNumberOfArguments(method)!=4 || types[0]!='v') return NO;
    return FZHook(cls,sel,replacement);
}
static BOOL FZHookVoid3Objects(Class cls, SEL sel, IMP replacement) {
    Method method=cls?class_getInstanceMethod(cls,sel):NULL; const char *types=method?method_getTypeEncoding(method):NULL;
    if(!method || !types || method_getNumberOfArguments(method)!=5 || types[0]!='v') return NO;
    return FZHook(cls,sel,replacement);
}
static id FZCallObject(id self, SEL sel, id arg) {
    IMP imp=FZOriginalFor(self,sel); return imp ? ((id(*)(id,SEL,id))imp)(self,sel,arg) : nil;
}
static void FZCallVoid2(id self, SEL sel, id a, id b) { IMP imp=FZOriginalFor(self,sel); if (imp) ((void(*)(id,SEL,id,id))imp)(self,sel,a,b); }
static void FZCallVoid1(id self, SEL sel, id arg) { IMP imp=FZOriginalFor(self,sel); if (imp) ((void(*)(id,SEL,id))imp)(self,sel,arg); }
static IMP FZImplementation(id self, SEL sel) {
    IMP imp=FZOriginalFor(self,sel); if(imp)return imp;
    Method m=class_getInstanceMethod(object_getClass(self)==self?self:object_getClass(self),sel);
    return m?method_getImplementation(m):NULL;
}
static NSInteger FZCallInteger(id self, SEL sel, NSInteger arg, BOOL hasArg) {
    IMP imp=FZImplementation(self,sel); if (!imp) return 0;
    return hasArg ? ((NSInteger(*)(id,SEL,NSInteger))imp)(self,sel,arg) : ((NSInteger(*)(id,SEL))imp)(self,sel);
}
static void FZCallVoid(id self, SEL sel) { IMP imp=FZOriginalFor(self,sel); if (imp) ((void(*)(id,SEL))imp)(self,sel); }

static NSMutableDictionary *FZState(id logic) {
    if (!gStates) gStates=[NSMapTable weakToStrongObjectsMapTable];
    NSMutableDictionary *s=[gStates objectForKey:logic];
    if (!s) { s=[@{@"group":FZCurrentGroup(),@"rows":@[],@"names":@[],@"valid":@NO} mutableCopy]; [gStates setObject:s forKey:logic]; }
    return s;
}
static id FZValueForKey(id object, NSString *key) { @try { return [object valueForKey:key]; } @catch (__unused NSException *e) { return nil; } }
static NSArray *FZHomeRawSessions(id home) {
    NSArray *keys=@[@"m_arrSession",@"allSessions",@"currentDisplayList",@"m_sessionList",@"sessionList"];
    for(NSString *key in keys){id value=FZValueForKey(home,key);if([value isKindOfClass:NSArray.class])return value;}
    for(NSString *managerKey in @[@"m_sessionMgr",@"m_sessionManager",@"m_logic",@"sessionMgr"]){id manager=FZValueForKey(home,managerKey);if(!manager)continue;for(NSString *key in keys){id value=FZValueForKey(manager,key);if([value isKindOfClass:NSArray.class])return value;}}
    return @[];
}
static BOOL FZIsHomeController(id object){return [[[object class] description] containsString:@"NewMainFrameViewController"];}
static NSInteger FZRawHomeCount(id home, NSInteger section) {
    SEL sel=@selector(tableView:numberOfRowsInSection:); IMP imp=FZOriginalFor(home,sel);
    if(imp){ id table=FZValueForKey(home,@"m_tableView"); gRawReadDepth++; NSInteger n=((NSInteger(*)(id,SEL,id,NSInteger))imp)(home,sel,table,section); gRawReadDepth--; return n<0||n>100000?0:n; }
    NSArray *raw=FZHomeRawSessions(home); if(raw.count)return (NSInteger)raw.count;
    IMP getter=FZOriginalFor(home,@selector(logicGetSessionAtIndexPath:));
    if(!getter)return 0;
    NSInteger count=0, nilRun=0; gRawReadDepth++; for(NSInteger i=0;i<4096;i++){ NSIndexPath *p=[NSIndexPath indexPathForRow:i inSection:section]; id session=((id(*)(id,SEL,id))getter)(home,@selector(logicGetSessionAtIndexPath:),p); if(session){count++;nilRun=0;}else if(++nilRun>=3)break; } gRawReadDepth--;
    return count;
}
static id FZRawHomeSession(id home, NSIndexPath *path) {
    SEL sel=@selector(logicGetSessionAtIndexPath:); IMP imp=FZOriginalFor(home,sel);
    if(imp){gRawReadDepth++;id value=((id(*)(id,SEL,id))imp)(home,sel,path);gRawReadDepth--;return value;}
    NSArray *raw=FZHomeRawSessions(home); NSInteger row=path.row; return row>=0&&row<(NSInteger)raw.count?raw[row]:nil;
}
static void FZSnapshot(id logic) {
    NSMutableDictionary *state=FZState(logic); NSString *group=state[@"group"] ?: FZCurrentGroup();
    BOOL isHome=FZIsHomeController(logic) || FZOriginalFor(logic,@selector(logicGetSessionAtIndexPath:))!=NULL;
    NSInteger count=isHome ? FZRawHomeCount(logic,0) : FZCallInteger(logic,@selector(getSessionCountForSection:),0,YES);
    NSMutableArray *rows=[NSMutableArray array], *names=[NSMutableArray array], *sessions=[NSMutableArray array];
    for (NSInteger i=0;i<count;i++) {
        NSIndexPath *path=[NSIndexPath indexPathForRow:i inSection:0]; id session=isHome?FZRawHomeSession(logic,path):FZCallObject(logic,@selector(getSessionInfoAtIndexPath:),path);
        if (session) { [sessions addObject:session]; FZAddRuntimeSessions(@[session]); }
        if (session && FZMatches(session,group)) { [rows addObject:@(i)]; [names addObject:FZSessionUser(session) ?: @""]; }
    }
    FZSetRuntimeSessions(sessions); state[@"rows"]=rows; state[@"names"]=names; state[@"valid"]=@YES;
}
static NSInteger FZMapRow(id logic, NSInteger row) {
    NSMutableDictionary *state=FZState(logic); if (![state[@"valid"] boolValue]) FZSnapshot(logic);
    NSArray *rows=state[@"rows"]; return row>=0 && row<(NSInteger)rows.count ? [rows[row] integerValue] : NSIntegerMax;
}
static NSInteger FZHomeRows(id self, SEL cmd, id table, NSInteger section) { if(section!=0)return 0; if(gRawReadDepth){IMP imp=FZOriginalFor(self,cmd);return imp?((NSInteger(*)(id,SEL,id,NSInteger))imp)(self,cmd,table,section):(NSInteger)FZHomeRawSessions(self).count;} FZSnapshot(self); return [FZState(self)[@"rows"] count]; }
static double FZHeaderHeight(id self, SEL cmd, id table, NSInteger section) {
    return section!=0||FZBool(@"WPPulse_HideTopBar",NO) ? 0.0 : 42.0;
}
static id FZHeaderView(id self, SEL cmd, id table, NSInteger section) {
    if (section!=0||FZBool(@"WPPulse_HideTopBar",NO)) return nil;
    FZSetUsesNativeHeader(YES);
    WPGroupHeaderView*h=[[WPGroupHeaderView alloc]initWithFrame:CGRectMake(12,0,((UIView *)table).bounds.size.width-24,42)];h.owner=(UIViewController *)self;h.selectedGroup=FZCurrentGroup();[h reloadGroups];return h;
}
static void FZSessionSelectLoad(id self, SEL cmd) { FZCallVoid(self,cmd); }
static void FZSessionSelectUpdate(id self, SEL cmd) { FZCallVoid(self,cmd); }
static void FZSessionSelectDone(id self, SEL cmd) { FZCallVoid(self,cmd); FZRefreshAll(); }
static void FZSessionSelectDoneArg(id self, SEL cmd, id arg) { FZCallVoid1(self,cmd,arg); FZRefreshAll(); }
static void FZSessionSelectSegment(id self, SEL cmd, id arg) { FZRefreshAll(); }
static void FZSessionSelectCustomDone(id self, SEL cmd, id arg) { FZRefreshAll(); }
static void FZAddSessionSelectMethods(Class cls) {
    if (!cls) return;
    class_addMethod(cls,sel_registerName("wp_onCustomDoneAction:"),(IMP)FZSessionSelectCustomDone,"v24@0:8@");
    class_addMethod(cls,sel_registerName("wp_segmentChanged:"),(IMP)FZSessionSelectSegment,"v24@0:8@");
}
static void FZMessageAdded(id self, SEL cmd, id message, id wrap) { FZCallVoid2(self,cmd,message,wrap); FZClearRuntimeSessions(); for(id logic in gStates){ NSMutableDictionary*s=[gStates objectForKey:logic]; s[@"valid"]=@NO; } FZRefreshAll(); }
static BOOL FZAddHomeRowsIfMissing(Class home) {
    if (!home || class_getInstanceMethod(home,@selector(tableView:numberOfRowsInSection:))) return NO;
    return class_addMethod(home,@selector(tableView:numberOfRowsInSection:),(IMP)FZHomeRows,"q@:@q");
}
static void FZAddHomeHeaderMethods(Class home) {
    if (!home) return;
    BOOL addedHeight=NO, addedView=NO;
    if (!class_getInstanceMethod(home,@selector(tableView:heightForHeaderInSection:))) addedHeight=class_addMethod(home,@selector(tableView:heightForHeaderInSection:),(IMP)FZHeaderHeight,"d@:@q");
    if (!class_getInstanceMethod(home,@selector(tableView:viewForHeaderInSection:))) addedView=class_addMethod(home,@selector(tableView:viewForHeaderInSection:),(IMP)FZHeaderView,"@@:@q");
    if(addedHeight||addedView)FZSetUsesNativeHeader(YES);
}
static id FZHomeSession(id self, SEL cmd, id path) {
    if(gRawReadDepth)return FZCallObject(self,cmd,path);
    NSInteger row=[path respondsToSelector:@selector(row)]?[path row]:0, real=FZMapRow(self,row); if(real==NSIntegerMax)return nil;
    NSIndexPath *mapped=[NSIndexPath indexPathForRow:real inSection:[path respondsToSelector:@selector(section)]?[path section]:0];
    return FZCallObject(self,@selector(logicGetSessionAtIndexPath:),mapped);
}
static id FZHomeCell(id self, SEL cmd, id path) {
    if(gRawReadDepth)return FZCallObject(self,cmd,path);
    NSInteger row=[path respondsToSelector:@selector(row)]?[path row]:0, real=FZMapRow(self,row); if(real==NSIntegerMax)return nil;
    NSIndexPath *mapped=[NSIndexPath indexPathForRow:real inSection:[path respondsToSelector:@selector(section)]?[path section]:0];
    return FZCallObject(self,@selector(logicGetCellDataAtIndexPath:),mapped);
}
static void FZHomeReload(id self, SEL cmd) { FZCallVoid(self,cmd); NSMutableDictionary*s=FZState(self);s[@"valid"]=@NO;FZRefreshAll(); }
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
static NSArray *FZManagerArray(id manager, __unused BOOL top, SEL itemSel) {
    SEL countSel=FZManagerCountSelector(itemSel); NSInteger count=FZCallInteger(manager,countSel,0,NO); if(count<0||count>100000)count=0;
    IMP getter=FZOriginalFor(manager,itemSel); if(!getter)return @[];
    NSMutableArray *all=[NSMutableArray array]; for(NSInteger i=0;i<count;i++){id s=((id(*)(id,SEL,NSInteger))getter)(manager,itemSel,i);if(s)[all addObject:s];}
    FZAddRuntimeSessions(all); NSMutableArray *filtered=[NSMutableArray array]; NSString *group=FZCurrentGroup();for(id s in all)if(FZMatches(s,group))[filtered addObject:s]; return filtered;
}
static NSInteger FZManagerCount(id self, SEL cmd) {
    if(gRawReadDepth)return FZCallInteger(self,cmd,0,NO);
    SEL itemSel=(cmd==@selector(visibleTopSessionCount))?@selector(getTopSessionAtIndex:):(cmd==@selector(visibleNormalSessionCount)?@selector(getNormalSessionAtIndex:):@selector(GetSessionAtIndex:));
    return [FZManagerArray(self,FZIsTopSelector(cmd),itemSel) count];
}
static id FZManagerItem(id self, SEL cmd, NSInteger index) {
    if(gRawReadDepth){IMP imp=FZOriginalFor(self,cmd);return imp?((id(*)(id,SEL,NSInteger))imp)(self,cmd,index):nil;}
    NSArray *a=FZManagerArray(self,FZIsTopSelector(cmd),cmd); return index>=0&&index<(NSInteger)a.count?a[index]:nil;
}
static void FZManagerReload(id self, SEL cmd) { FZCallVoid(self,cmd); for(id logic in gStates){ NSMutableDictionary*s=[gStates objectForKey:logic];s[@"valid"]=@NO; } FZRefreshAll(); }

static void FZApplyConfigChanged(__unused NSNotification *note) { for(id logic in gStates){NSMutableDictionary*s=[gStates objectForKey:logic];s[@"group"]=FZCurrentGroup();s[@"valid"]=@NO;} FZRefreshAll(); }
static void FZAppear(id self, SEL cmd, BOOL animated) { IMP imp=FZOriginalFor(self,cmd); if(imp)((void(*)(id,SEL,BOOL))imp)(self,cmd,animated); FZInstallUI((UIViewController *)self); }
static void FZLoad(id self, SEL cmd) { FZCallVoid(self,cmd); dispatch_async(dispatch_get_main_queue(),^{FZInstallUI((UIViewController *)self);}); }
static void FZLayout(id self, SEL cmd) { FZCallVoid(self,cmd); FZInstallUI((UIViewController *)self); }
static void FZSettingsAppear(id self, SEL cmd, BOOL animated) { IMP imp=FZOriginalFor(self,cmd);if(imp)((void(*)(id,SEL,BOOL))imp)(self,cmd,animated);FZInstallSettingsEntry((UIViewController *)self); }
static void FZPan(id self, SEL cmd, UIPanGestureRecognizer *gesture) {
    if(gesture.state!=UIGestureRecognizerStateEnded)return; CGFloat x=[gesture translationInView:gesture.view].x;if(fabs(x)<40)return;NSArray*groups=FZVisibleGroups();if(groups.count<2)return;NSUInteger i=0;for(NSUInteger n=0;n<groups.count;n++)if([groups[n][@"name"]isEqual:FZCurrentGroup()]){i=n;break;}BOOL next=x<0;if(FZBool(@"WPPulse_ReverseSwipe",NO))next=!next;NSInteger j=next?(NSInteger)i+1:(NSInteger)i-1;if(j<0||j>=(NSInteger)groups.count){if(!FZBool(@"WPPulse_LoopSwipe",YES))return;j=(j+(NSInteger)groups.count)%(NSInteger)groups.count;}FZSelectGroup(groups[j][@"name"]);NSInteger h=FZInteger(@"WPPulse_HapticLevel",1);if(h>0){UIImpactFeedbackGenerator*g=[[UIImpactFeedbackGenerator alloc]initWithStyle:h>1?UIImpactFeedbackStyleMedium:UIImpactFeedbackStyleLight];[g impactOccurred];}
}
static void FZLong(id self, SEL cmd, UILongPressGestureRecognizer *gesture) { if(gesture.state==UIGestureRecognizerStateBegan){UIViewController*c=(UIViewController*)self;[c.navigationController pushViewController:[WPCustomSettingsPanel new] animated:YES];} }
static void FZAddGestureMethods(Class cls){if(!cls)return;class_addMethod(cls,sel_registerName("fz_handlePan:"),(IMP)FZPan,"v24@0:8@");class_addMethod(cls,sel_registerName("fz_handleLongPress:"),(IMP)FZLong,"v24@0:8@");}
void FZRefreshAll(void){dispatch_async(dispatch_get_main_queue(),^{UIViewController*c=FZTopViewController();FZRefreshUI(c);UITableView*table=(UITableView*)FZValueForKey(c,@"m_tableView");if(![table isKindOfClass:UITableView.class])table=(UITableView*)FZValueForKey(c,@"tableView");if([table isKindOfClass:UITableView.class])[table reloadData];[c.view setNeedsLayout];});}
void FZInstallHooks(void){if(gInstalled)return;gInstalled=YES;gStates=[NSMapTable weakToStrongObjectsMapTable];NSNotificationCenter*n=[NSNotificationCenter defaultCenter];[n addObserverForName:FZGroupChanged object:nil queue:NSOperationQueue.mainQueue usingBlock:^(__unused NSNotification*x){FZApplyConfigChanged(x);}];[n addObserverForName:FZConfigChanged object:nil queue:NSOperationQueue.mainQueue usingBlock:^(__unused NSNotification*x){FZApplyConfigChanged(x);}];
    Class mainMgr=objc_getClass("MainSessionMgr");FZHook(mainMgr,@selector(visibleTopSessionCount),(IMP)FZManagerCount);FZHook(mainMgr,@selector(visibleNormalSessionCount),(IMP)FZManagerCount);FZHook(mainMgr,@selector(getTopSessionAtIndex:),(IMP)FZManagerItem);FZHook(mainMgr,@selector(getNormalSessionAtIndex:),(IMP)FZManagerItem);
    for(NSString *name in @[@"MMNewSessionMgr", @"SessionMgr"]) { Class c=objc_getClass(name.UTF8String);FZHook(c,@selector(GetSessionCount),(IMP)FZManagerCount);FZHook(c,@selector(GetSessionAtIndex:),(IMP)FZManagerItem); }
    Class select=objc_getClass("SessionSelectController");FZHookVoid0(select,@selector(viewDidLoad),(IMP)FZSessionSelectLoad);FZHookVoid0(select,@selector(updateRightBtn),(IMP)FZSessionSelectUpdate);FZHookVoid0(select,@selector(onMultiDone),(IMP)FZSessionSelectDone);FZHookVoid0(select,@selector(OnDone),(IMP)FZSessionSelectDone);FZHookVoid1(select,@selector(onDone:),(IMP)FZSessionSelectDoneArg);FZAddSessionSelectMethods(select);
    Class home=objc_getClass("NewMainFrameViewController");FZAddGestureMethods(home);FZHook(home,@selector(viewDidLoad),(IMP)FZLoad);FZHook(home,@selector(viewWillAppear:),(IMP)FZAppear);FZHook(home,@selector(viewDidAppear:),(IMP)FZAppear);FZHook(home,@selector(viewDidLayoutSubviews),(IMP)FZLayout);FZHook(home,@selector(reloadSessions),(IMP)FZHomeReload);FZHook(home,@selector(logicGetSessionAtIndexPath:),(IMP)FZHomeSession);FZHook(home,@selector(logicGetCellDataAtIndexPath:),(IMP)FZHomeCell);if(!FZHook(home,@selector(tableView:numberOfRowsInSection:),(IMP)FZHomeRows))FZAddHomeRowsIfMissing(home);FZAddHomeHeaderMethods(home);
    Class message=objc_getClass("CMessageMgr");FZHookVoid2Objects(message,@selector(AsyncOnAddMsg:MsgWrap:),(IMP)FZMessageAdded);
    Class settings=objc_getClass("NewSettingViewController");FZHook(settings,@selector(viewDidAppear:),(IMP)FZSettingsAppear);
}
__attribute__((constructor))static void FZInit(void){@autoreleasepool{if(![NSBundle.mainBundle.bundleIdentifier isEqual:@"com.tencent.xin"])return;dispatch_async(dispatch_get_main_queue(),^{FZInstallHooks();});}}
