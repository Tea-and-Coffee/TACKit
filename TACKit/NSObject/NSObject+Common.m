//
//  NSObject+Common.m
//  MobileMessenger
//
//  Created by companion_ios on 20150527.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "NSObject+Common.h"

@implementation NSObject (Common)

+ (NSString *)identifier {
    return NSStringFromClass([self class]);
}

@end
