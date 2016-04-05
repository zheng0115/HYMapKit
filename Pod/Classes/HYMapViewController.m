//
//  HYMapViewController.m
//  MapTest
//
//  Created by 58 on 4/1/16.
//  Copyright © 2016 Huang Wei. All rights reserved.
//

#import "HYMapViewController.h"

NSString *const kHYMapAnnotationClassNameKey = @"kHYMapAnnotationClassNameKey";
NSString *const kHYMapAnnotationViewClassNameKey = @"kHYMapAnnotationViewClassNameKey";

@interface HYMapViewController () <HYMapViewDelegate>

@end

@implementation HYMapViewController

#pragma mark - HYMapViewDelegate

- (id <HYAnnotationView>)mapView:(id <HYMapViewProtocol>)mapView viewForAnnotation:(HYMapAnnotation *)annotation
{
    for (NSDictionary *aDic in [self.class components]) {
        if ([aDic[kHYMapAnnotationClassNameKey] isEqualToString:NSStringFromClass([annotation class])]) {
            NSString *identifier = aDic[kHYMapAnnotationClassNameKey];
            NSString *annotationViewClassName = aDic[kHYMapAnnotationViewClassNameKey];
            
            id <HYAnnotationView> annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
            
            if (annotationView == nil) {
                annotationView = [[NSClassFromString(annotationViewClassName) alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
            }
            
            annotationView.annotation = annotation;
            annotationView.canShowCallout = annotation.canShowCallout;
            annotationView.enabled = annotation.enabled;
            [annotationView prepareAnnotationView];
            
            return annotationView;
        }
    }
    
    return nil;
}

+ (NSArray<NSDictionary *> *)components
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
