//
//  NSNumber+Arithmetic.m
//  TACKit
//
//  Created by masato_arai on 2015/12/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSNumber+Arithmetic.h"

ArithmeticOperator add = ^const NSDecimal(NSDecimal op1, NSDecimal op2) {
    NSDecimal result;
    NSDecimalAdd(&result, &op1, &op2, NSRoundPlain);
    return result;
};

ArithmeticOperator subtract = ^const NSDecimal(NSDecimal op1, NSDecimal op2) {
    NSDecimal result;
    NSDecimalSubtract(&result, &op1, &op2, NSRoundPlain);
    return result;
};

ArithmeticOperator multiply = ^const NSDecimal(NSDecimal op1, NSDecimal op2) {
    NSDecimal result;
    NSDecimalMultiply(&result, &op1, &op2, NSRoundPlain);
    return result;
};

ArithmeticOperator divide = ^const NSDecimal(NSDecimal op1, NSDecimal op2) {
    NSDecimal result;
    NSDecimalDivide(&result, &op1, &op2, NSRoundPlain);
    return result;
};


@implementation NSNumber (Arithmetic)

- (NSNumber *)numberByOperator:(ArithmeticOperator)opr rightOperand:(NSNumber *)rightOp {
    if ([[NSDecimalNumber notANumber] isEqualToNumber:rightOp]) return nil;
    
    @autoreleasepool {
        NSDecimal roundNum;
        const NSDecimal ans = opr([self decimalValue], [rightOp decimalValue]);
        NSDecimalRound(&roundNum, &ans, 2, NSRoundPlain);
        return [NSDecimalNumber decimalNumberWithDecimal:roundNum];
    }
}

@end
