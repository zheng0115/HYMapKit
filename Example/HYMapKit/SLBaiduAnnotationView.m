//
//  SLBaiduAnnotationView.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLBaiduAnnotationView.h"

static const CGFloat kCalloutWidth = 200;
static const CGFloat kCalloutHeight = 70;


@interface SLBaiduAnnotationView ()
@property (nonatomic, strong) UIView *calloutView;
@end

@implementation SLBaiduAnnotationView

- (void)prepareAnnotationView
{
    self.image = [UIImage imageNamed:@"myPin"];
    self.paopaoView = [[BMKActionPaopaoView alloc] initWithCustomView:self.calloutView];
}


- (UIView *)calloutView
{
    if (!_calloutView) {
        _calloutView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kCalloutWidth, kCalloutHeight)];
        _calloutView.center = CGPointMake(CGRectGetWidth(self.bounds) / 2 + self.calloutOffset.x,
                                          -CGRectGetHeight(self.calloutView.bounds) / 2 + self.calloutOffset.y);
        _calloutView.backgroundColor = [UIColor purpleColor];
    }
    return _calloutView;
}
@end
