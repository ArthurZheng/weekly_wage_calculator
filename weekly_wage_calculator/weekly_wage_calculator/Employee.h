//
//  Employee.h
//  weekly_wage_calculator
//
//  Created by Andrew Spinks on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HourlyRate.h"
#import "WorkRecord.h"

@interface Employee : NSObject

@property NSString *name, *position;
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
