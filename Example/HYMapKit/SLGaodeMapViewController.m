//
//  SLGaodeMapViewController.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLGaodeMapViewController.h"
#import <MAMapKit/MAMapKit.h>
#import "SLGaodeAnnotation.h"

@interface SLGaodeMapViewController ()

@end

@implementation SLGaodeMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView = (UIView<HYMapViewProtocol> *)[[MAMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];
    
    for (CLLocation *aLocation in self.locations) {
        SLGaodeAnnotation *annotation = [SLGaodeAnnotation new];
        annotation.coordinate = aLocation.coordinate;
        [self.mapView addAnnotation:annotation];
    }
}

+ (NSArray<NSDictionary *> *)components
{
    return @[
             @{kHYMapAnnotationClassNameKey: @"SLGaodeAnnotation",
               kHYMapAnnotationViewClassNameKey : @"SLGaodeAnnotationView"}
             ];
}

@end
