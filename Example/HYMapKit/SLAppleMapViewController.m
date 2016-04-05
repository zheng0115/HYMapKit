//
//  SLAppleMapViewController.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLAppleMapViewController.h"
#import <MapKit/MapKit.h>
#import "SLAppleAnnotation.h"

@interface SLAppleMapViewController ()

@end

@implementation SLAppleMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView = (UIView<HYMapViewProtocol> *)[[MKMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];
    
    for (CLLocation *aLocation in self.locations) {
        SLAppleAnnotation *annotation = [SLAppleAnnotation new];
        annotation.coordinate = aLocation.coordinate;
        [self.mapView addAnnotation:annotation];
    }
}

+ (NSArray<NSDictionary *> *)components
{
    return @[
             @{kHYMapAnnotationClassNameKey: @"SLAppleAnnotation",
               kHYMapAnnotationViewClassNameKey : @"SLAppleAnnotationView"}
             ];
}

@end
