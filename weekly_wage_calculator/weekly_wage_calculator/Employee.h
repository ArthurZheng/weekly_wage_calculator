//
//  Employee.h
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HourlyRate;
@class WorkRecord;

@interface Employee : NSObject

@property NSString *name;
@property NSString *position;
@property int age;
@property HourlyRate *hourlyRate;
@property WorkRecord *workRecord;

-(void) setName: (NSString *) name andPosition: (NSString *) position;
-(double) calculateWeekDayEarnings;
-(double) calculateSaturdayEarnings;
-(double) calculateSundayEarnings;
-(double) calculatePublicHolidayEarnings;
-(double) calculateWeeklyEarnings;
-(void) print;

@end
