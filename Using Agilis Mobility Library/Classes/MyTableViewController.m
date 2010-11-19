
#import "MyTableViewController.h"
#import "MyTableView.h"
#import "TestModel.h"

@implementation MyTableViewController

- (NSArray*) buildMockData{
    TestModel *m1 = [[[TestModel alloc] init] autorelease];
    m1.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m1.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/bg_icon_trip_air.png";
    TestModel *m2 = [[[TestModel alloc] init] autorelease];
    m2.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m2.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/bg_icon_trip_car.png";
    
    TestModel *m3 = [[[TestModel alloc] init] autorelease];
    m3.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m3.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_food-drink.png";
    
    TestModel *m4 = [[[TestModel alloc] init] autorelease];
    m4.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m4.aGivenRecord.imageURLString = nil;
    
    TestModel *m5 = [[[TestModel alloc] init] autorelease];
    m5.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m5.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_meeting.png";
    
    TestModel *m6 = [[[TestModel alloc] init] autorelease];
    m6.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m6.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_rail.png";
    
    TestModel *m7 = [[[TestModel alloc] init] autorelease];
    m7.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m7.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_event.png";
    
    TestModel *m8 = [[[TestModel alloc] init] autorelease];
    m8.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m8.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_attraction.png";
    
    TestModel *m41 = [[[TestModel alloc] init] autorelease];
    m41.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m41.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_groundTransport.png";
    
    TestModel *m51 = [[[TestModel alloc] init] autorelease];
    m51.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m51.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_meeting.png";
    
    TestModel *m61 = [[[TestModel alloc] init] autorelease];
    m61.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m61.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_rail.png";
    
    self.data = [NSArray arrayWithObjects:m1, m2, m3, m4, m41, m51, m61, m5, m6, m7, m8, nil];
    return self.data;
}

- (id)initWithStyle:(UITableViewStyle)style {
    if ((self = [super initWithStyle:style])) {
        self.tableView = [[[MyTableView alloc] initWithFrame:self.tableView.frame style:self.tableView.style andData:[self buildMockData]] autorelease];
        self.title = @"Demo";
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated{
    // If necessary, refresh your data with new data and set self.data to the new data 
    //call super at end of generating new data
    [super viewDidAppear:animated];
}


@end

