//
//  TaxWithholding.m
//  weekly_wage_calculator

/*
Tax calculation formula y = ax - b;
The formulas comprise linear equations of the form y = ax – b, where:
y is the weekly withholding amount expressed in dollars
x is the number of whole dollars in the weekly earnings plus 99 cents
a and b are the values of the coefficients for each set of formulas for each range of weekly earnings (or, in the case of fortnightly, monthly or quarterly earnings, the weekly equivalent of these amounts).
 */

//  Created by Jun Zheng on 4/07/2015.
//  Copyright (c) 2015 Techtransformers. All rights reserved.
//

#import "TaxWithholding.h"

@implementation TaxWithholding

@synthesize coefficientA, coefficientB, taxApplicable;
@synthesize worker;

// set coefficient a and b based on the weekly earnings;
-(void)setCoefficientACoefficientB {
    double finalWeeklyEarnings = self.calculateWeeklyEarningsForFormula;
    
    if (finalWeeklyEarnings < 395 && finalWeeklyEarnings >=0) {
        self.coefficientA = 0.0;
        self.coefficientB = 0.0;
    }
    else if (finalWeeklyEarnings < 493) {
        self.coefficientA = 0.1900;
        self.coefficientB = 67.4635;
    }
    else if (finalWeeklyEarnings < 711) {
        self.coefficientA = 0.2900;
        self.coefficientB = 106.9673;
    }
    else if (finalWeeklyEarnings < 1282) {
        self.coefficientA = 0.2100;
        self.coefficientB = 67.4642;
    }
    else if (finalWeeklyEarnings < 1538) {
        self.coefficientA = 0.3477;
        self.coefficientB = 165.4431;
    }
    else if (finalWeeklyEarnings < 3461) {
        self.coefficientA = 0.3450;
        self.coefficientB = 161.9815;
    }
    else {
        self.coefficientA = 0.4900;
        self.coefficientB = 577.3662;
    }
}

-(double) calculateWeeklyEarningsForFormula {
    //the final weekly earnings is the number of whole dollars in the weekly earnings plus 99 cents.
    return ceil(self.worker.calculateWeeklyEarnings) + 0.99;
}

-(double) calculatePAYGWithholding {
    /*
    Tax calculation formula y = ax - b.
    x is the number of whole dollars in the weekly earnings plus 99 cents. 
    We created a function calculateWeeklyEarnings for it.
    a and b are the values of the coefficients for each set of formulas for each range of weekly earnings.
     */
    return round(self.calculateWeeklyEarningsForFormula * self.coefficientA - self.coefficientB);
}

-(double) calculateNetPay {
    return self.worker.calculateWeeklyEarnings - self.calculatePAYGWithholding;
}

-(void) generatePaySlip {
    // print out hours, rates, gross pay, tax, net pay;
    NSLog(@".........\t\t\t..........\nWeekday Hours: %f, Gross Pay: $%f, Tax WithHeld: $%f, Net Pay : $%f.", self.worker.workRecord.weekdayHours, self.worker.calculateWeeklyEarnings, self.calculatePAYGWithholding, self.calculateNetPay);
}


@end
