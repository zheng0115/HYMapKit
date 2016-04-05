//
//  SLGaodeAnnotationView.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLGaodeAnnotationView.h"

static const CGFloat kCalloutWidth = 200;
static const CGFloat kCalloutHeight = 70;


@interface SLGaodeAnnotationView ()
@property (nonatomic, strong) UIView *calloutView;
@end

@implementation SLGaodeAnnotationView
- (void)prepareAnnotationView
{
    self.image = [UIImage imageNamed:@"myPin"];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (self.selected == selected) {
        return;
    }
    
    if (selected) {
        [self addSubview:self.calloutView];
    } else {
        [self.calloutView removeFromSuperview];
    }
    
    [super setSelected:selected animated:YES];
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
