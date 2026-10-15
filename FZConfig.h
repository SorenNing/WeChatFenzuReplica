#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString *const FZConfigChanged;
FOUNDATION_EXPORT NSString *const FZGroupChanged;
FOUNDATION_EXPORT NSArray<NSMutableDictionary *> *FZAllGroups(void);
FOUNDATION_EXPORT NSArray<NSMutableDictionary *> *FZVisibleGroups(void);
FOUNDATION_EXPORT NSDictionary *FZGroupNamed(NSString *name);
FOUNDATION_EXPORT NSString *FZCurrentGroup(void);
FOUNDATION_EXPORT void FZSelectGroup(NSString *name);
FOUNDATION_EXPORT void FZSaveGroups(NSArray *groups);
FOUNDATION_EXPORT BOOL FZCreateGroup(NSString *name);
FOUNDATION_EXPORT BOOL FZRenameGroup(NSString *oldName, NSString *newName);
FOUNDATION_EXPORT BOOL FZDeleteGroup(NSString *name);
FOUNDATION_EXPORT BOOL FZSetGroupVisible(NSString *name, BOOL visible);
FOUNDATION_EXPORT BOOL FZMoveGroup(NSString *name, BOOL forward);
FOUNDATION_EXPORT BOOL FZSetMembers(NSString *name, NSArray<NSString *> *members);
FOUNDATION_EXPORT NSArray<NSString *> *FZMembers(NSString *name);
FOUNDATION_EXPORT NSString *FZSessionUser(id session);
FOUNDATION_EXPORT NSUInteger FZUnread(id session);
FOUNDATION_EXPORT BOOL FZMatches(id session, NSString *groupName);
FOUNDATION_EXPORT BOOL FZBool(NSString *key, BOOL fallback);
FOUNDATION_EXPORT void FZSetBool(NSString *key, BOOL value);
FOUNDATION_EXPORT NSInteger FZInteger(NSString *key, NSInteger fallback);
FOUNDATION_EXPORT void FZSetInteger(NSString *key, NSInteger value);
FOUNDATION_EXPORT CGFloat FZFloat(NSString *key, CGFloat fallback);
FOUNDATION_EXPORT void FZSetFloat(NSString *key, CGFloat value);
FOUNDATION_EXPORT UIColor *FZColor(NSString *key, UIColor *fallback);
FOUNDATION_EXPORT void FZSetColor(NSString *key, UIColor *color);
FOUNDATION_EXPORT NSString *FZMaterial(NSString *key);
FOUNDATION_EXPORT void FZSetMaterial(NSString *key, NSString *path);
FOUNDATION_EXPORT NSArray<NSString *> *FZMaterials(void);
FOUNDATION_EXPORT void FZResetAppearance(void);
FOUNDATION_EXPORT void FZSetRuntimeSessions(NSArray *sessions);
FOUNDATION_EXPORT NSUInteger FZGroupUnreadCount(NSString *name);
