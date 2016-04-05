//
//  HYAnnotation.h
//  Pods
//
//  Created by 58 on 4/5/16.
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>

@interface HYMapAnnotation : NSObject
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, assign) BOOL canShowCallout;
@property (nonatomic, assign) BOOL enabled;
@end
