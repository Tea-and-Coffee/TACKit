//
//  TACCompare.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACCompare.h"

@implementation TACCompare

#pragma mark
#pragma mark The Comparison Methods.
/// stringAとstringBを比較し、同じならYESを返す
+ (BOOL)compareWithString:(id)aString string:(id)bString {
    if ([self isNil:aString string:bString]) {
        return NO;
    }
    
    if ([aString compare:bString] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}
/// objectAのクラス名とstringAを比較し、同じならYESを返す
+ (BOOL)compareWithObject:(id)aObject string:(id)aString {
    NSString *aClassName = NSStringFromClass([aObject class]);
    if ([self isNil:aString string:aClassName]) {
        return NO;
    }
    
    if ([aClassName compare:aString] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}
/// objectAとobjectBのクラス名を比較し、同じならYESを返す
+ (BOOL)compareWithObject:(id)aObject object:(id)bObject {
    NSString *aClassName = NSStringFromClass([aObject class]);
    NSString *bClassName = NSStringFromClass([bObject class]);
    if ([self isNil:aClassName string:bClassName]) {
        return NO;
    }
    
    if ([aClassName compare:bClassName] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isNil:(id)aString string:(id)bString {
    if (![aString length] || ![bString length]) {
        return YES;
    }
    return NO;
}

#pragma mark
#pragma mark The 正規表現 Methods.
/// メールアドレスが正規表現ならYESを返す
+ (BOOL)isValidateEmail:(NSString *)email {
    NSString *pattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", pattern];
    return [emailTest evaluateWithObject:email];
}

@end
