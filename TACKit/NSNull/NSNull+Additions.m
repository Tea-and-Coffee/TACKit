//
//  NSNull+Additions.m
//  TACKit
//
//  Created by masato_arai on 2015/12/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSNull+Additions.h"

@implementation NSNull (Additions)

+ (BOOL)isNull:(id)obj {
    return obj == nil || [[NSNull null] isEqual:obj];
}

+ (BOOL)notNull:(id)obj {
    return ![self isNull:obj];
}

@end
