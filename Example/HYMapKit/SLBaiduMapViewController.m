//
//  SLBaiduMapViewController.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLBaiduMapViewController.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import "SLBaiduAnnotation.h"

@interface SLBaiduMapViewController ()

@end

@implementation SLBaiduMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView = (UIView<HYMapViewProtocol> *)[[BMKMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];
    
    for (CLLocation *aLocation in self.locations) {
        SLBaiduAnnotation *annotation = [SLBaiduAnnotation new];
        annotation.title = @"Baidu";
        annotation.coordinate = aLocation.coordinate;
        annotation.canShowCallout = YES;
        [self.mapView addAnnotation:annotation];
    }
}

+ (NSArray<NSDictionary *> *)components
{
    return @[
             @{kHYMapAnnotationClassNameKey: @"SLBaiduAnnotation",
               kHYMapAnnotationViewClassNameKey : @"SLBaiduAnnotationView"}
             ];
}

@end
