//
//  TACRuntimeUtilities.m
//  TACKit
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <objc/runtime.h>
#import "TACRuntimeUtilities.h"

@implementation TACRuntimeUtilities

+ (void)swizzleImplementations:(Class)class1 selector:(SEL)target1 class:(Class)class2 selector:(SEL)target2 {
    Method m1 = class_getInstanceMethod(class1, target1);
    Method m2 = class_getInstanceMethod(class2, target2);
    method_exchangeImplementations(m1, m2);
}

@end
