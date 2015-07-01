//
//  DemoFunction.m
//  TechmasterApp
//
//  Created by mac on 6/30/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self writeln:@"Demo function"];
    [self sayFirstName:@"Steven" andLastName:@"Job"];
    float tempDegree = 30.1;
    
    NSString* result = [NSString stringWithFormat:@"%2.1f degree equal to %3.1f", tempDegree,
                        [self celciusToFahrenheit:tempDegree]];
    
    [self writeln:result];
    [self performSelector:@selector(celciusToFahrenheit)];
    //[self celciusToFahrenheit];
   // [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
//    NSString *result2 = [NSString stringWithFormat:@"Using performSelector: %2.1f degree equal to %3.1f", tempDegree,
//                         [self performSelector:@selector(celciusToFahrenheit:) withObject:[NSNumber numberWithFloat:tempDegree]]];
    float temp ;
    temp = [[self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.2)] floatValue];
    //[self writeln:result2];
 }

- (void) sayFirstName: (NSString*)firstName andLastName: (NSString*)lastName {
    NSLog(@"%@ %@", firstName, lastName);
}

- (float) celciusToFahrenheit: (float) degree {
    return degree * 1.8 + 32.0;
}

- (void) celciusToFahrenheit {
    NSLog(@"Do nothing");
}

- (float) celciusToFahrenheit2: (NSNumber*) degree {
    float result =  [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
    return result;
}

@end
