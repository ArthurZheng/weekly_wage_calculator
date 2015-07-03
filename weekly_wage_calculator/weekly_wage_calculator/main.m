//
//  main.m
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JuniorEmployee.h"
#import "AdultEmployee.h"
#import "JuniorHourlyRate.h"
#import "AdultHourlyRate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"------------- Weekly Wage Calculator Program ------------\n\n");
        
        NSLog(@"Creating a Junior Emlpyee Object....................");
        JuniorEmployee *jun = [[JuniorEmployee alloc] init];
        [jun setName:@"Jun Zheng" andPosition:@"Manager"];
        [jun setAge:15];
        [jun print];
        
        NSLog(@"\n\nCreating an Adult Employee Object...............");
        AdultEmployee *sen = [[AdultEmployee alloc] init];
        [sen setName:@"Sen Zheng" andPosition:@"Senior Manager"];
        [sen setAge:35];
        [sen print];
        
        NSLog(@"\n\nGetting Junior Hourly Rate......................");
        JuniorHourlyRate *juniorRate = [[JuniorHourlyRate alloc] init];
        
        [juniorRate setBaseHourlyRate:16.25];
        [juniorRate print];
        
        
        NSLog(@"\n\nGetting Adult Hourly Rate......................");
        AdultHourlyRate *adultRate = [[AdultHourlyRate alloc] init];
        
        [adultRate setBaseHourlyRate:23.15];
        [adultRate print];
        
        
        
    }
    return 0;
}
