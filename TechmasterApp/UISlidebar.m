//
//  UISlidebar.m
//  TechmasterApp
//
//  Created by mac on 6/30/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "UISlidebar.h"

@interface UISlidebar () {
    NSTimer *_timer;
    float value;
    
}

@end

@implementation UISlidebar

- (void)viewDidLoad {
    [super viewDidLoad];
    value = 0.0;
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    
    //[self tranformSlider];
   }

- (void) onTimer {
    self.slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.slider.tintColor = [UIColor redColor];
    self.slider.thumbTintColor = [UIColor yellowColor];
    
    if (value >= 1) {
        [_timer invalidate];
    }
    value += 0.1;
    [self.slider setValue:value];
}

@end
