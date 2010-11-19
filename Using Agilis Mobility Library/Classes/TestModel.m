#import "TestModel.h"

@implementation TestModel

@synthesize aGivenRecord;

- (void) dealloc{
    self.aGivenRecord = nil;
    [super dealloc];
}

@end

