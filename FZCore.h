#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WCPulseSessionMgr : NSObject
+ (instancetype)shared;
- (void)setupDefaultGroups;
- (NSArray *)activeGroupConfigs;
- (NSArray *)hiddenGroupConfigs;
- (void)saveConfigs;
- (void)renameGroup:(NSString *)group toName:(NSString *)name;
- (void)setGroup:(NSString *)group visible:(BOOL)visible;
- (void)moveGroup:(NSString *)group forward:(BOOL)forward;
- (void)resetConfigs;
- (void)reloadSessions;
- (void)rebuildFilteredSessions;
- (NSInteger)getUnreadForTypeId:(NSString *)typeId;
- (NSInteger)extractUnreadFromSession:(id)session;
- (NSArray *)filterSessions:(NSArray *)sessions withGroupName:(NSString *)name needTop:(BOOL)top;
- (BOOL)isChatSession:(id)session;
@end

FOUNDATION_EXPORT void FZInstallHooks(void);
FOUNDATION_EXPORT void FZRefreshAll(void);
