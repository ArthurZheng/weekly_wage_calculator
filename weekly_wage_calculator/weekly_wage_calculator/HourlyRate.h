//
//  HourlyRate.h
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HourlyRate : NSObject

@property double weekdayHourlyRate, saturdayHourlyRate, sundayHourlyRate, publicHolidayHourlyRate;

-(void) print;

@end
