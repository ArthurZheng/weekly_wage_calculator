//
//  Employee.m
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize name, position, age;

-(void) setName:(NSString *)name andPosition:(NSString *)position {
    self.name = name;
    self.position = position;
}

-(void) print {
    NSLog(@"Employee details: name - %@, age - %i, position - %@.", name, age, position);
}

@end
