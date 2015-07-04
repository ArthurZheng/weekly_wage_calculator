//
//  WorkRecord.h
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 4/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkRecord : NSObject

@property double weekdayHours;
@property double saturdayHours;
@property double sundayHours;
@property double publicHolidayHours;

//-(void) print;


@end
