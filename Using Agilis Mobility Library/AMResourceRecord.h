#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AMResourceRecord : NSObject{
    UIImage     *image;
    NSString    *imageURLString;
    BOOL        preventRecycle;
}

@property (nonatomic, retain) UIImage                                       *image;
@property (nonatomic, retain) NSString                                      *imageURLString;
@property (nonatomic, assign, getter=isProtectedFromRecycle)    BOOL        preventRecycle; 
@end