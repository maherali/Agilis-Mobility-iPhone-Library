#import "Using_Agilis_Mobility_LibraryAppDelegate.h"
#import "MyTableViewController.h"

@implementation Using_Agilis_Mobility_LibraryAppDelegate

@synthesize window, navCtrl;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    MyTableViewController *tbl = [[[MyTableViewController alloc] init] autorelease];
    self.navCtrl = [[[UINavigationController alloc] initWithRootViewController:tbl] autorelease];
    [window addSubview:navCtrl.view];
    [window makeKeyAndVisible];
	return YES;
}

- (void)dealloc {
    self.window = nil;
    self.navCtrl = nil;
    [super dealloc];
}


@end
