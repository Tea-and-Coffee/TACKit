//
//  TACCompare.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACCompare : NSObject

+ (BOOL)compareWithString:(id)aString string:(id)bString;
+ (BOOL)compareWithObject:(id)aObject string:(id)aString;
+ (BOOL)compareWithObject:(id)aObject object:(id)bObject;

+ (BOOL)isValidateEmail:(NSString *)email;

@end
