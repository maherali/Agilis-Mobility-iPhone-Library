
#import "MyTableViewController.h"
#import "MyTableView.h"
#import "TestModel.h"

@implementation MyTableViewController

- (NSArray*) buildMockData{
    TestModel *m1 = [[[TestModel alloc] init] autorelease];
    m1.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m1.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/bg_icon_trip_air.png";
    m1.aText = @"Air";
    TestModel *m2 = [[[TestModel alloc] init] autorelease];
    m2.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m2.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/bg_icon_trip_car.png";
    m2.aText = @"Car";
    
    TestModel *m3 = [[[TestModel alloc] init] autorelease];
    m3.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m3.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_food-drink.png";
    m3.aText = @"Food & Drink";
    
    TestModel *m4 = [[[TestModel alloc] init] autorelease];
    m4.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m4.aGivenRecord.imageURLString = nil;
    m4.aText = @"N/A";
    
    TestModel *m5 = [[[TestModel alloc] init] autorelease];
    m5.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m5.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_meeting.png";
    m5.aText = @"Meeting";
    
    TestModel *m6 = [[[TestModel alloc] init] autorelease];
    m6.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m6.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_rail.png";
    m6.aText = @"Rail";
    
    TestModel *m7 = [[[TestModel alloc] init] autorelease];
    m7.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m7.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_event.png";
    m7.aText = @"Event";
    
    TestModel *m8 = [[[TestModel alloc] init] autorelease];
    m8.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m8.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_attraction.png";
    m8.aText = @"Attraction";
    
    TestModel *m41 = [[[TestModel alloc] init] autorelease];
    m41.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m41.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_groundTransport.png";
    m41.aText = @"Ground Transportation";
    
    TestModel *m51 = [[[TestModel alloc] init] autorelease];
    m51.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m51.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_meeting.png";
    m51.aText = @"Meeting";
    
    TestModel *m61 = [[[TestModel alloc] init] autorelease];
    m61.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
    m61.aGivenRecord.imageURLString = @"http://www.tripcase.com/images/TC_tripIcons_rail.png";
    m61.aText = @"Rail";
    
    self.data = [NSArray arrayWithObjects:m1, m2, m3, m4, m41, m51, m61, m5, m6, m7, m8, nil];
    return self.data;
}

- (void) viewDidLoad{
    [super viewDidLoad];
    self.tableView = [[[MyTableView alloc] initWithFrame:self.tableView.frame style:self.tableView.style andData:[self buildMockData]] autorelease];
    self.title = @"Demo";
}

- (void) viewDidAppear:(BOOL)animated{
    // If necessary, refresh your data with new data and set self.data to the new data 
    //call super at end of generating new data
    [super viewDidAppear:animated];
}


@end

