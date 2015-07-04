//
//  TaxWithholding.h
//  weekly_wage_calculator
//
//  Created by Jun Zheng on 4/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Employee;

@interface TaxWithholding : NSObject

@property double coefficientA;
@property double coefficientB;
//@property double taxApplicable;
@property Employee *worker;

-(void) setCoefficientACoefficientB;

-(double) calculateWeeklyEarningsForFormula;
-(double) calculatePAYGWithholding;
-(double) calculateNetPay;
-(void) generatePaySlip;

@end
