//
//  TACRuntimeUtilities.h
//  TACKit
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface TACRuntimeUtilities : NSObject

+ (void)swizzleImplementations:(Class)class1 selector:(SEL)target1 class:(Class)class2 selector:(SEL)target2;

FOUNDATION_EXPORT const char *property_getType(objc_property_t property);

@end

/**
 * [How To Use]
 *
 * [TACRuntimeUtilities swizzleImplementations:selector:class:selector]
 *     TACRuntimeUtilitiesTestsに記述
 */
