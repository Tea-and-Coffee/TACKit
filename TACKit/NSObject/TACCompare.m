//
//  TACCompare.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACCompare.h"
#import "NSNull+Additions.h"

@implementation TACCompare

#pragma mark
#pragma mark The Comparison Methods.

/** stringAとstringBを比較し、等しいならYESを返す */
+ (BOOL)compareWithString:(NSString *)aString string:(NSString *)bString {
    if ([NSNull isNull:aString]) {
        return NO;
    }
    if ([NSNull isNull:bString]) {
        return NO;
    }
    
    if ([aString compare:bString] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

/** objectAのクラス名とstringAを比較し、等しいならYESを返す */
+ (BOOL)compareWithObject:(id)aObject string:(NSString *)aString {
    if ([NSNull isNull:aObject]) {
        return NO;
    }
    if ([NSNull isNull:aString]) {
        return NO;
    }
    
    NSString *aClassName = NSStringFromClass([aObject class]);
    
    if ([aClassName compare:aString] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

/** objectAとobjectBのクラス名を比較し、等しいならYESを返す */
+ (BOOL)compareWithObject:(id)aObject object:(id)bObject {
    if ([NSNull isNull:aObject]) {
        return NO;
    }
    if ([NSNull isNull:bObject]) {
        return NO;
    }
    
    NSString *aClassName = NSStringFromClass([aObject class]);
    NSString *bClassName = NSStringFromClass([bObject class]);
    
    if ([aClassName compare:bClassName] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

#pragma mark
#pragma mark The 正規表現 Methods.

/** メールアドレスが正規表現ならYESを返す */
+ (BOOL)isValidateEmail:(NSString *)email {
    NSString *pattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", pattern];
    return [emailTest evaluateWithObject:email];
}

@end
