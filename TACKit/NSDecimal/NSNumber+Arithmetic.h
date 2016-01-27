//
//  NSNumber+Arithmetic.h
//  TACKit
//
//  Created by masato_arai on 2015/12/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef const NSDecimal (^ArithmeticOperator)(NSDecimal, NSDecimal);
OBJC_EXPORT ArithmeticOperator add, subtract, multiply, divide;

@interface NSNumber (Arithmetic)

- (NSNumber *)numberByOperator:(ArithmeticOperator)opr rightOperand:(NSNumber *)rightOp;

@end
