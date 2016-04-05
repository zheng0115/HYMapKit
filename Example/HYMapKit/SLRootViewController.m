//
//  SLRootViewController.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLRootViewController.h"
#import "SLAppleMapViewController.h"
#import "SLBaiduMapViewController.h"
#import "SLGaodeMapViewController.h"

@interface SLRootViewController ()

@end

@implementation SLRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSMutableArray *locations = [NSMutableArray array];
    for(int i = 0; i < 50; i++) {
        CGFloat latDelta = rand()*0.125/RAND_MAX - 0.02;
        CGFloat lonDelta = rand()*0.130/RAND_MAX - 0.08;
        CGFloat lat = 39.54;
        CGFloat lng = 116.23;
        [locations addObject:[[CLLocation alloc] initWithLatitude:lat+latDelta longitude:lng+lonDelta]];
    }
    
    
    UIViewController *vc1 = ({
        SLAppleMapViewController *vc = [SLAppleMapViewController new];
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Apple" image:nil tag:0];
        vc.locations = locations;
        vc;
    });
    UIViewController *vc2 = ({
        SLBaiduMapViewController *vc = [SLBaiduMapViewController new];
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Baidu" image:nil tag:1];
        vc.locations = locations;
        vc;
    });
    UIViewController *vc3 = ({
        SLGaodeMapViewController *vc = [SLGaodeMapViewController new];
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Gaode" image:nil tag:2];
        vc.locations = locations;
        vc;
    });
    
    [self setViewControllers:@[vc1, vc2, vc3]
                    animated:YES];
}

@end
