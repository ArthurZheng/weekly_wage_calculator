//
//  TaxWithholding.h
//  weekly_wage_calculator
//
//  Created by Andrew Spinks on 4/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface TaxWithholding : NSObject

@property double coefficientA, coefficientB, taxApplicable;
@property Employee *worker;

-(void) setCoefficientACoefficientB;

-(double) calculateWeeklyEarningsForFormula;
-(double) calculatePAYGWithholding;
-(double) calculateNetPay;
-(void) generatePaySlip;
@end
