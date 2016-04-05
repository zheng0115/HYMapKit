//
//  HYMapViewProtocol.h
//  MapTest
//
//  Created by 58 on 4/1/16.
//  Copyright © 2016 Huang Wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>
#import <UIKit/UIKit.h>
#import "HYMapAnnotation.h"

@class HYMapAnnotation;
@protocol HYAnnotationView;
@protocol HYMapViewDelegate;

@protocol HYMapViewProtocol <NSObject>
- (id <HYAnnotationView>)dequeueReusableAnnotationViewWithIdentifier:(NSString *)identifier;
@property (nonatomic, weak) id <HYMapViewDelegate> delegate;
@property (nonatomic, readonly) NSArray *annotations;
- (void)addAnnotation:(HYMapAnnotation *)annotation;
- (void)addAnnotations:(NSArray *)annotations;
- (void)removeAnnotation:(HYMapAnnotation *)annotation;
- (void)removeAnnotations:(NSArray *)annotations;
- (void)removeAllAnnotations;
- (void)showAnnotations:(NSArray *)annotations animated:(BOOL)animated;
@end


@protocol HYMapViewDelegate <NSObject>
- (id <HYAnnotationView>)mapView:(id <HYMapViewProtocol>)mapView viewForAnnotation:(HYMapAnnotation *)annotation;
@end


@protocol HYAnnotationView <NSObject>
- (instancetype)initWithAnnotation:(HYMapAnnotation *)annotation reuseIdentifier:(NSString *)reuseIdentifier;
- (void)prepareAnnotationView;
@property (nonatomic, assign) BOOL canShowCallout;
@property (nonatomic, getter=isEnabled) BOOL enabled;
@property (nonatomic, strong) HYMapAnnotation * annotation;
@property (nonatomic, assign) CGPoint calloutOffset;
@end
