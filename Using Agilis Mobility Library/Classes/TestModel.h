@class AMResourceRecord;

@interface TestModel : NSObject{
    AMResourceRecord *aGivenRecord;
    NSString    *aText;
}

@property (nonatomic, retain)  AMResourceRecord *aGivenRecord;
@property (nonatomic, retain)  NSString    *aText;
@end
