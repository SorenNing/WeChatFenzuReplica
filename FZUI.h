#import <UIKit/UIKit.h>
#import "FZConfig.h"

@interface WPColorPickerManager : NSObject <UIColorPickerViewControllerDelegate>
+ (instancetype)shared;
- (void)pickColorForKey:(NSString *)key fromVC:(UIViewController *)vc;
@end

@interface WPMaterialSelectVC : UITableViewController
@property(nonatomic, copy) NSString *typeId;
@property(nonatomic) BOOL isForGlobalBadge;
@property(nonatomic, copy) NSArray<NSString *> *files;
@end

@interface WPCustomGroupSelectVC : UIViewController
@property(nonatomic, copy) NSString *typeId;
@property(nonatomic, copy) NSArray<NSDictionary *> *privateContactsList;
@property(nonatomic, copy) NSArray<NSDictionary *> *groupContactsList;
@property(nonatomic, copy) NSArray<NSDictionary *> *currentDisplayList;
@property(nonatomic, strong) NSMutableSet<NSString *> *selectedWxids;
@property(nonatomic) NSInteger currentSegmentIndex;
@property(nonatomic, copy) NSString *searchText;
@end

@interface WPSettingsTableProvider : NSObject <UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, weak) UIViewController *parentVC;
@property(nonatomic, weak) UITableView *tableView;
@property(nonatomic, strong) NSDictionary *snapshot;
@property(nonatomic, copy) NSString *editingTypeId;
@end

@interface WPCustomSettingsPanel : UITableViewController
@end

@interface WPGroupHeaderView : UIVisualEffectView
@property(nonatomic, copy) NSArray<NSDictionary *> *groups;
@property(nonatomic, copy) NSString *selectedGroup;
@property(nonatomic, weak) UIViewController *owner;
- (void)reloadGroups;
@end

@interface WPSideDockView : UIView
@property(nonatomic, copy) NSArray<NSDictionary *> *groups;
@property(nonatomic, copy) NSString *selectedGroup;
@property(nonatomic, weak) UIViewController *owner;
- (void)reloadGroups;
@end

FOUNDATION_EXPORT void FZInstallUI(UIViewController *controller);
FOUNDATION_EXPORT WPGroupHeaderView *FZGroupHeaderForController(UIViewController *controller);
FOUNDATION_EXPORT BOOL FZUsesNativeHeader(void);
FOUNDATION_EXPORT void FZSetUsesNativeHeader(BOOL value);
FOUNDATION_EXPORT void FZRefreshUI(UIViewController *controller);
FOUNDATION_EXPORT void FZInstallSettingsEntry(UIViewController *controller);
FOUNDATION_EXPORT UIViewController *FZTopViewController(void);
