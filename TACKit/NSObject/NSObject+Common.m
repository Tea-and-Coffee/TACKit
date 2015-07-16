//
//  NSObject+Common.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/05/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSObject+Common.h"

@implementation NSObject (Common)

+ (NSString *)identifier {
    return NSStringFromClass([self class]);
}

@end
