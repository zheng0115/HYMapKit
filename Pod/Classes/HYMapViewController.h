//
//  HYMapViewController.h
//  MapTest
//
//  Created by 58 on 4/1/16.
//  Copyright © 2016 Huang Wei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYMapViewProtocol.h"

/// components的key
extern NSString *const kHYMapAnnotationClassNameKey;
extern NSString *const kHYMapAnnotationViewClassNameKey;

@interface HYMapViewController : UIViewController <HYMapViewDelegate>
// 子类赋值
@property (nonatomic, strong) UIView<HYMapViewProtocol> *mapView;

+ (NSArray<NSDictionary *> *)components;
@end
