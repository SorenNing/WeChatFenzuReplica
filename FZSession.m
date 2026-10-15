#import "FZCore.h"
#import "FZConfig.h"

@implementation WCPulseSessionMgr {
    NSMutableArray *_groupConfigs;
    NSString *_currentSelectGroup;
    NSArray *_allSessions;
    NSArray *_filteredTopSessions;
    NSArray *_filteredNormalSessions;
    NSDictionary *_unreadCounts;
}
+ (instancetype)shared { static WCPulseSessionMgr *m; static dispatch_once_t once; dispatch_once(&once, ^{ m=[self new]; [m setupDefaultGroups]; }); return m; }
- (instancetype)init { if ((self=[super init])) { _currentSelectGroup=FZCurrentGroup(); } return self; }
- (void)setupDefaultGroups { _groupConfigs=[[FZAllGroups() mutableCopy] mutableCopy]; _currentSelectGroup=FZCurrentGroup(); }
- (NSArray *)groupConfigs { return self->_groupConfigs ?: FZAllGroups(); }
- (void)setGroupConfigs:(NSArray *)x { self->_groupConfigs=[x mutableCopy]; FZSaveGroups(x); }
- (NSArray *)activeGroupConfigs { NSMutableArray*a=[NSMutableArray array];for(NSDictionary*g in self.groupConfigs)if([g[@"visible"]boolValue])[a addObject:g];return a; }
- (NSArray *)hiddenGroupConfigs { NSMutableArray*a=[NSMutableArray array];for(NSDictionary*g in self.groupConfigs)if(![g[@"visible"]boolValue])[a addObject:g];return a; }
- (void)saveConfigs { FZSaveGroups(self.groupConfigs); }
- (void)renameGroup:(NSString *)group toName:(NSString *)name { FZRenameGroup(group,name);[self setupDefaultGroups]; }
- (void)setGroup:(NSString *)group visible:(BOOL)visible { FZSetGroupVisible(group,visible);[self setupDefaultGroups]; }
- (void)moveGroup:(NSString *)group forward:(BOOL)forward { FZMoveGroup(group,forward);[self setupDefaultGroups]; }
- (void)resetConfigs { [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"WPGroupConfigs_v2"];[[NSUserDefaults standardUserDefaults]removeObjectForKey:@"WPPulse_LastGroup"];[self setupDefaultGroups]; }
- (void)reloadSessions { [self rebuildFilteredSessions]; }
- (void)rebuildFilteredSessions { NSMutableArray*top=[NSMutableArray array],*normal=[NSMutableArray array];for(id s in _allSessions){if(FZMatches(s,_currentSelectGroup)){[normal addObject:s];}}_filteredTopSessions=top;_filteredNormalSessions=normal; }
- (NSInteger)getUnreadForTypeId:(NSString *)typeId { NSInteger n=0;for(id s in _allSessions)if(FZMatches(s,typeId))n+=(NSInteger)FZUnread(s);return n; }
- (NSInteger)extractUnreadFromSession:(id)session { return (NSInteger)FZUnread(session); }
- (NSArray *)filterSessions:(NSArray *)sessions withGroupName:(NSString *)name needTop:(BOOL)top { NSMutableArray*a=[NSMutableArray array];for(id s in sessions)if(FZMatches(s,name))[a addObject:s];return a; }
- (BOOL)isChatSession:(id)session { NSString*u=FZSessionUser(session);return u.length>0; }
- (NSString *)currentSelectGroup { return _currentSelectGroup; }
- (void)setCurrentSelectGroup:(NSString *)x { _currentSelectGroup=[x copy]; FZSelectGroup(x);[self rebuildFilteredSessions]; }
- (NSArray *)allSessions { return _allSessions; }
- (void)setAllSessions:(NSArray *)x { _allSessions=[x copy];[self rebuildFilteredSessions]; }
- (NSArray *)filteredTopSessions { return _filteredTopSessions; }
- (void)setFilteredTopSessions:(NSArray *)x {_filteredTopSessions=[x copy];}
- (NSArray *)filteredNormalSessions { return _filteredNormalSessions; }
- (void)setFilteredNormalSessions:(NSArray *)x {_filteredNormalSessions=[x copy];}
- (NSDictionary *)unreadCounts { return _unreadCounts; }
- (void)setUnreadCounts:(NSDictionary *)x {_unreadCounts=[x copy];}
@end
