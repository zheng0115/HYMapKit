//
//  SLBaseMapViewController.m
//  HYMapKit
//
//  Created by 58 on 4/5/16.
//  Copyright © 2016 parallelWorld. All rights reserved.
//

#import "SLBaseMapViewController.h"

@interface SLBaseMapViewController ()

@end

@implementation SLBaseMapViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.mapView showAnnotations:self.mapView.annotations animated:YES];
}

@end
