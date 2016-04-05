//
//  SLAppDelegate.m
//  HYMapKit
//
//  Created by parallelWorld on 04/05/2016.
//  Copyright (c) 2016 parallelWorld. All rights reserved.
//

#import "SLAppDelegate.h"
#import "SLRootViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <MAMapKit/MAMapKit.h>

@implementation SLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 配置百度地图
    {
        BMKMapManager *manager = [BMKMapManager new];
        BOOL ret = [manager start:@"w1T3RnAwuGNEC4rUdKZlHn8CszQHx1uA" generalDelegate:nil];
        if (!ret) {
            NSLog(@"百度地图初始化失败");
        }
    }
    
    // 高德地图
    {

        [MAMapServices sharedServices].apiKey = @"0da4af60d6f4a11bdb69ce4f8301def0";

    }

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [SLRootViewController new];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
