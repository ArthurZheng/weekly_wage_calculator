//
//  main.m
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "HourlyRate.h"
#import "WorkRecord.h"
#import "TaxWithholding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"------------- Weekly Wage Calculator Program ------------\n\n");
        
        NSLog(@"Loading the Weekly Wage Çalculator Program............");
       
        // initialzing an employee object;
        Employee *jun = [[Employee alloc] init];
        [jun setName:@"Jun Zheng" andPosition:@"Manager"];
        [jun setAge:30];
        
        // initializing an hourly rate object;
        HourlyRate *hourlyRate = [[HourlyRate alloc] init];
        [hourlyRate setWeekdayHourlyRate: 23.15];
        [hourlyRate setSaturdayHourlyRate:25.01];
        [hourlyRate setSundayHourlyRate:37.05];
        [hourlyRate setPublicHolidayHourlyRate:23.15 * 2];
        
        // initializing a work record object;
        WorkRecord *workRecord = [[WorkRecord alloc] init];
        [workRecord setWeekdayHours:10.5];
        [workRecord setSaturdayHours:4.0];
        [workRecord setSundayHours: 5.0];
        
        // adding members hourlyRate, workRecord to employee object;
        jun.hourlyRate = hourlyRate;
        jun.workRecord = workRecord;
        [jun print];

        
        // initialzing a TaxWithholding object;
        TaxWithholding *taxWithholding = [[TaxWithholding alloc] init];
        
        taxWithholding.worker = jun;
        
        NSLog(@"Generating Payslip...........");
        [taxWithholding setCoefficientACoefficientB];
        [taxWithholding generatePaySlip];
        

        
        
        
    }
    return 0;
}
