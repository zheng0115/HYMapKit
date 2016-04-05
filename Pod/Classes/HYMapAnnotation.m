//
//  HYAnnotation.m
//  Pods
//
//  Created by 58 on 4/5/16.
//
//

#import "HYMapAnnotation.h"

@implementation HYMapAnnotation
- (instancetype)init
{
    self = [super init];
    if (self) {
        _enabled = YES;
        _canShowCallout = NO;
    }
    return self;
}
@end
