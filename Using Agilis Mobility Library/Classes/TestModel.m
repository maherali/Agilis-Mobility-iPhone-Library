#import "TestModel.h"

@implementation TestModel

@synthesize aGivenRecord, aText;

- (void) dealloc{
    self.aGivenRecord = nil;
    self.aText = nil;
    [super dealloc];
}

@end

