//
//  DemoSelector.m
//  TechmasterApp
//
//  Created by mac on 6/30/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *textSlider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)onCrunchData:(id)sender {
//    [self performSelectorInBackground:@selector(doCrunChData) withObject:nil];
    
    //[self performSelectorOnMainThread:@selector(doCrunChData) withObject:nil waitUntilDone:(true)];
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
    [self performSelector:@selector(processData:) withObject:@{@"apple" : @"táo", @"tomato" : @"cam"}];
}

- (void) doCrunChData {
    [NSThread sleepForTimeInterval:5];
}

- (void) hideSlider {
    self.slider.hidden = true;
    [self.textSlider setTitle:@"Show slider" forState:(UIControlStateNormal)];
}

- (void) processData: (NSDictionary*) data {
    for (NSString *key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

- (IBAction)doHideSlider:(id)sender {
    if ([self.slider isHidden]) {
        self.slider.hidden = false;
        [self.textSlider setTitle:@"Hide slider" forState:(UIControlStateNormal)];
    } else {
         [self hideSlider];
    }
}

@end
