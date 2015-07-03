//
//  HourlyRate.m
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import "HourlyRate.h"

@implementation HourlyRate

@synthesize baseHourlyRate, saturdayHourlyRate, sundayHourlyRate, publicHolidayHourlyRate;

-(void) print {
    NSLog(@"The base hourly rate is %f.", baseHourlyRate);
}

@end
