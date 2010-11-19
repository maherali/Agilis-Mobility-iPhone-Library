#import "AMTableCell.h"
#import "AMImageViewWrapper.h"

@protocol AMImageDownloadingAgentDelegate;
@class AMImageDownloadingAgent;

@interface AMTableView : UITableView <AMImageDownloadingAgentDelegate, AMTableCellDelegate, UITableViewDelegate, UITableViewDataSource> {
    AMImageDownloadingAgent             *downloadAgent;
    NSArray                             *data;
    NSDictionary                        *contexts;
}

@property (nonatomic, retain) AMImageDownloadingAgent     *downloadAgent;
@property (nonatomic, retain) NSArray                     *data;
@property (nonatomic, retain) NSDictionary                *contexts;

- (id) initWithFrame:(CGRect)frame style:(UITableViewStyle)style andData:(NSArray*)data; 
- (void) showTableWithData:(NSArray*)newData;
@end
