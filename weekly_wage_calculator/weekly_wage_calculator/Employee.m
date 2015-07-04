//
//  Employee.m
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import "Employee.h"
#import "HourlyRate.h"
#import "WorkRecord.h"

@implementation Employee

-(void) setName:(NSString *)name andPosition:(NSString *)position {
    self.name = name;
    self.position = position;
}

-(double) calculateWeekDayEarnings {
    return self.workRecord.weekdayHours * self.hourlyRate.weekdayHourlyRate;
}

-(double) calculateSaturdayEarnings {
    return self.workRecord.saturdayHours * self.hourlyRate.saturdayHourlyRate;
}

-(double) calculateSundayEarnings {
    return self.workRecord.sundayHours * self.hourlyRate.sundayHourlyRate;
}

-(double) calculatePublicHolidayEarnings {
    return self.workRecord.publicHolidayHours * self.hourlyRate.publicHolidayHourlyRate;
}

-(double) calculateWeeklyEarnings {
    return self.calculateWeekDayEarnings + self.calculateSaturdayEarnings + self.calculateSundayEarnings + self.calculatePublicHolidayEarnings;
}

-(void) print {
    NSLog(@"Employee details: name - %@, age - %i, position - %@.", _name, _age, _position);
    NSLog(@"weekday hours - %f, Saturday hours - %f, Sunday hours %f, public holiday hours -%f, weekly earnings %f.", self.workRecord.weekdayHours, self.workRecord.saturdayHours, self.workRecord.sundayHours, self.workRecord.publicHolidayHours, self.calculateWeekDayEarnings);
}

@end
