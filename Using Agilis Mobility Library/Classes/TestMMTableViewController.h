#import "AMTableView.h"
#import "AMResourceRecord.h"

@interface TestModel : NSObject
{
    AMResourceRecord *aGivenRecord;
}

@property (nonatomic, retain)  AMResourceRecord *aGivenRecord;

@end

@interface TestMMTableViewController : AMTableView {

}

@end
