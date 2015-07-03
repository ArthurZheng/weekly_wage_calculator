//
//  Employee.h
//  weekly_wage_calculator
//
//  Created by Andrew Spinks on 3/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name, *position;
@property int age;

-(void) setName: (NSString *) name andPosition: (NSString *) position;

-(void) print;

@end
