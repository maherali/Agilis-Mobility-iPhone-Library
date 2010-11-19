#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AMResourceRecord.h"

@protocol AMTableCellDelegate

- (void) startImageDownload:(AMResourceRecord*)resource forIndexPath:(NSIndexPath*)indexPath andContext:(NSString*)context;

@end


@interface AMTableCell : UITableViewCell {
    UITableView                 *tableView;
    id<AMTableCellDelegate>     delegate;
    NSIndexPath                 *indexPath;
    NSDictionary                *contexts;
}

@property (nonatomic, assign) UITableView               *tableView;
@property (nonatomic, assign) id<AMTableCellDelegate>   delegate;
@property (nonatomic, retain) NSIndexPath               *indexPath;
@property (nonatomic, retain) NSDictionary              *contexts;

@end
