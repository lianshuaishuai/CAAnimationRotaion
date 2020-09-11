//
//  AppDelegate.m
//  CAAnimationAnchorRotation
//
//  Created by 连帅帅 on 2020/9/11.
//  Copyright © 2020 连帅帅. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor whiteColor];
    Class class = NSClassFromString(@"ViewController");
    UIViewController *vc = [[class alloc]init];
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nvc;
   
    return YES;
}



@end
