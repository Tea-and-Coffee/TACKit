//
//  NSString+Additions.m
//  TACKit
//
//  Created by masato_arai on 2016/11/30.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)

+ (BOOL)isNotLength:(NSString *)string {
    if (string == nil) {
        return YES;
    }
    if (![string isKindOfClass:[NSString class]]) {
        return YES;
    }
    if (string.length == 0) {
        return YES;
    }
    return NO;
}

@end
