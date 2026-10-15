#import "FZConfig.h"
#import <objc/runtime.h>
#import <objc/message.h>

NSString *const FZConfigChanged = @"FenzuReplica.ConfigChanged";
NSString *const FZGroupChanged = @"FenzuReplica.GroupChanged";
static NSString *const kGroups = @"WPGroupConfigs_v2";
static NSString *const kCurrent = @"WPPulse_LastGroup";
static NSMutableArray<NSMutableDictionary *> *gGroups;
static NSString *gCurrent;

static NSMutableDictionary *FZDefault(NSString *name, NSString *type) {
    return [@{@"id": name, @"name": name, @"visible": @YES, @"isCustom": @NO, @"members": @[], @"type": type} mutableCopy];
}
static void FZLoad(void) {
    if (gGroups) return;
    gGroups = [NSMutableArray array];
    NSArray *saved = [[NSUserDefaults standardUserDefaults] arrayForKey:kGroups];
    for (NSDictionary *item in saved) {
        if (![item isKindOfClass:NSDictionary.class] || ![item[@"name"] isKindOfClass:NSString.class]) continue;
        NSMutableDictionary *g = [item mutableCopy];
        g[@"id"] = g[@"id"] ?: g[@"name"];
        g[@"visible"] = @([g[@"visible"] boolValue]);
        g[@"isCustom"] = @([g[@"isCustom"] boolValue]);
        g[@"members"] = [g[@"members"] isKindOfClass:NSArray.class] ? [g[@"members"] copy] : @[];
        g[@"type"] = g[@"type"] ?: ([g[@"isCustom"] boolValue] ? @"custom" : @"all");
        [gGroups addObject:g];
    }
    if (!gGroups.count) [gGroups addObjectsFromArray:@[
        FZDefault(@"全部", @"all"), FZDefault(@"未读", @"unread"),
        FZDefault(@"好友", @"friends"), FZDefault(@"群聊", @"groups"),
        FZDefault(@"公众号", @"official")]];
    NSMutableSet *names = [NSMutableSet set];
    NSIndexSet *duplicates = [gGroups indexesOfObjectsPassingTest:^BOOL(NSDictionary *g, NSUInteger idx, BOOL *stop) {
        if ([names containsObject:g[@"name"]]) return YES;
        [names addObject:g[@"name"]]; return NO;
    }];
    if (duplicates.count) [gGroups removeObjectsAtIndexes:duplicates];
    NSString *last = [[NSUserDefaults standardUserDefaults] stringForKey:kCurrent];
    gCurrent = [names containsObject:last] ? [last copy] : @"全部";
}
static void FZPost(void) {
    FZLoad();
    [[NSUserDefaults standardUserDefaults] setObject:gGroups forKey:kGroups];
    if (gCurrent) [[NSUserDefaults standardUserDefaults] setObject:gCurrent forKey:kCurrent];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSNotificationCenter defaultCenter] postNotificationName:FZConfigChanged object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:FZGroupChanged object:nil];
}
NSArray<NSMutableDictionary *> *FZAllGroups(void) { FZLoad(); return [gGroups copy]; }
NSArray<NSMutableDictionary *> *FZVisibleGroups(void) { FZLoad(); return [gGroups filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(NSDictionary *g, NSDictionary *_) { return [g[@"visible"] boolValue]; }]]; }
NSDictionary *FZGroupNamed(NSString *name) { FZLoad(); for (NSDictionary *g in gGroups) if ([g[@"name"] isEqual:name]) return g; return nil; }
NSString *FZCurrentGroup(void) { FZLoad(); return gCurrent ?: @"全部"; }
void FZSelectGroup(NSString *name) { FZLoad(); NSDictionary *g=FZGroupNamed(name); if (g && [g[@"visible"] boolValue]) { gCurrent=[name copy]; [[NSUserDefaults standardUserDefaults] setObject:gCurrent forKey:kCurrent]; [[NSNotificationCenter defaultCenter] postNotificationName:FZGroupChanged object:nil]; } }
void FZSaveGroups(NSArray *groups) { FZLoad(); gGroups=[NSMutableArray array]; for (NSDictionary*g in groups) if ([g isKindOfClass:NSDictionary.class]) [gGroups addObject:[g mutableCopy]]; FZPost(); }
BOOL FZCreateGroup(NSString *name) { FZLoad(); if (!name.length || FZGroupNamed(name)) return NO; [gGroups addObject:[@{@"id":[NSString stringWithFormat:@"custom_%@", name], @"name":name, @"visible":@YES, @"isCustom":@YES, @"members":@[], @"type":@"custom"} mutableCopy]]; FZPost(); return YES; }
BOOL FZRenameGroup(NSString *oldName, NSString *newName) { FZLoad(); if (!newName.length || FZGroupNamed(newName) || [oldName isEqual:@"全部"]) return NO; for (NSMutableDictionary*g in gGroups) if ([g[@"name"] isEqual:oldName]) { g[@"name"]=newName; if ([gCurrent isEqual:oldName])gCurrent=[newName copy]; FZPost(); return YES; } return NO; }
BOOL FZDeleteGroup(NSString *name) { FZLoad(); NSDictionary*g=FZGroupNamed(name); if (![g[@"isCustom"] boolValue]) return NO; [gGroups removeObject:(NSMutableDictionary *)g]; if ([gCurrent isEqual:name])gCurrent=@"全部"; FZPost(); return YES; }
BOOL FZSetGroupVisible(NSString *name, BOOL visible) { FZLoad(); if ([name isEqual:@"全部"]) return NO; for (NSMutableDictionary*g in gGroups) if ([g[@"name"] isEqual:name]) {g[@"visible"]=@(visible);if(!visible&&[gCurrent isEqual:name])gCurrent=@"全部";FZPost();return YES;}return NO; }
BOOL FZMoveGroup(NSString *name, BOOL forward) { FZLoad(); NSUInteger i=[gGroups indexOfObjectPassingTest:^BOOL(NSDictionary*g,NSUInteger idx,BOOL*stop){return [g[@"name"] isEqual:name];}]; if(i==NSNotFound)return NO; NSInteger j=forward?i+1:(NSInteger)i-1;if(j<0||j>=gGroups.count)return NO;[gGroups exchangeObjectAtIndex:i withObjectAtIndex:j];FZPost();return YES; }
BOOL FZSetMembers(NSString *name, NSArray<NSString *> *members) { FZLoad(); for (NSMutableDictionary*g in gGroups)if([g[@"name"] isEqual:name]&&[g[@"isCustom"] boolValue]){g[@"members"]=[members copy]?:@[];FZPost();return YES;}return NO; }
NSArray<NSString *> *FZMembers(NSString *name) { return FZGroupNamed(name)[@"members"] ?: @[]; }
NSString *FZSessionUser(id session) { for (NSString*k in @[@"m_nsUserName", @"m_nsUsrName", @"userName"]) { @try { id v=[session valueForKey:k];if([v isKindOfClass:NSString.class]&&[(NSString *)v length])return v;}@catch(__unused NSException*e){} Ivar iv=class_getInstanceVariable(object_getClass(session),k.UTF8String);if(iv){id v=object_getIvar(session,iv);if([v isKindOfClass:NSString.class]&&[(NSString *)v length])return v;} } return nil; }
NSUInteger FZUnread(id session) { for(NSString*k in @[@"m_uUnReadCount",@"unreadCount"]){@try{id v=[session valueForKey:k];if([v respondsToSelector:@selector(unsignedIntegerValue)])return [v unsignedIntegerValue];}@catch(__unused NSException*e){}}return 0; }
BOOL FZMatches(id session, NSString *name) { NSDictionary*g=FZGroupNamed(name);if(!g)return NO;NSString*u=FZSessionUser(session)?:@"";NSString*t=g[@"type"];if([t isEqual:@"all"])return YES;if([t isEqual:@"unread"])return FZUnread(session)>0;if([t isEqual:@"groups"])return [u hasSuffix:@"@chatroom"];if([t isEqual:@"official"])return [u hasPrefix:@"gh_"]||[u isEqual:@"brandsessionholder"];if([t isEqual:@"custom"])return [g[@"members"] containsObject:u];if([t isEqual:@"friends"]){if(!u.length||[u hasSuffix:@"@chatroom"]||[u hasPrefix:@"gh_"]||[u containsString:@"@"] )return NO;if(!FZBool(@"WPPulse_FilterCustomFromFriends", YES))return YES;return ![@[@"filehelper",@"weixin",@"fmessage",@"qmessage",@"tmessage",@"newsapp",@"notification_messages"] containsObject:u];}return NO; }
BOOL FZBool(NSString*k,BOOL f){id v=[[NSUserDefaults standardUserDefaults]objectForKey:k];return v?[v boolValue]:f;} void FZSetBool(NSString*k,BOOL v){[[NSUserDefaults standardUserDefaults]setBool:v forKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
NSInteger FZInteger(NSString*k,NSInteger f){id v=[[NSUserDefaults standardUserDefaults]objectForKey:k];return v?[v integerValue]:f;} void FZSetInteger(NSString*k,NSInteger v){[[NSUserDefaults standardUserDefaults]setInteger:v forKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
CGFloat FZFloat(NSString*k,CGFloat f){id v=[[NSUserDefaults standardUserDefaults]objectForKey:k];return v?[v doubleValue]:f;} void FZSetFloat(NSString*k,CGFloat v){[[NSUserDefaults standardUserDefaults]setDouble:v forKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
UIColor *FZColor(NSString*k,UIColor*f){NSData*d=[[NSUserDefaults standardUserDefaults]objectForKey:k];UIColor*c=d?[NSKeyedUnarchiver unarchiveObjectWithData:d]:nil;return c?:f;}void FZSetColor(NSString*k,UIColor*c){NSData*d=[NSKeyedArchiver archivedDataWithRootObject:c requiringSecureCoding:NO error:nil];[[NSUserDefaults standardUserDefaults]setObject:d forKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
NSString *FZMaterial(NSString*k){return [[NSUserDefaults standardUserDefaults]stringForKey:k];}void FZSetMaterial(NSString*k,NSString*p){[[NSUserDefaults standardUserDefaults]setObject:p forKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
NSArray<NSString *> *FZMaterials(void){NSString*d=[NSHomeDirectory() stringByAppendingPathComponent:@"Library/分组素材"];NSArray*files=[[NSFileManager defaultManager]contentsOfDirectoryAtPath:d error:nil];NSMutableArray*a=[NSMutableArray array];for(NSString*f in files)if([@[@"png",@"jpg",@"jpeg"] containsObject:f.pathExtension.lowercaseString])[a addObject:[d stringByAppendingPathComponent:f]];return a;}
void FZResetAppearance(void){for(NSString*k in @[@"WPPulse_BgColor",@"WPPulse_ShadowColor",@"WPPulse_TopBgColor",@"WPPulse_TopTextColor",@"WPPulse_GlobalBadgeMaterial",@"WPPulse_CustomDockMaterial"])[[NSUserDefaults standardUserDefaults]removeObjectForKey:k];[[NSNotificationCenter defaultCenter]postNotificationName:FZConfigChanged object:nil];}
