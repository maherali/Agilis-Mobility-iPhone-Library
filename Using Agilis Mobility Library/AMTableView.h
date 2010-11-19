#import "AMTableCell.h"
@protocol AMImageDownloadingAgentDelegate;
@class AMImageDownloadingAgent;

@interface AMTableView : UITableViewController <AMImageDownloadingAgentDelegate, AMTableCellDelegate> {
    AMImageDownloadingAgent             *downloadAgent;
    NSArray                             *data;
    NSDictionary                        *contexts;
}

@property (nonatomic, retain) AMImageDownloadingAgent     *downloadAgent;
@property (nonatomic, retain) NSArray                     *data;
@property (nonatomic, retain) NSDictionary                *contexts;

- (void) configureCell:(AMTableCell*)cell withIndexPath:(NSIndexPath*)indexPath;
- (void) reset;
@end
