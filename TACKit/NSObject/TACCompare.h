//
//  TACCompare.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACCompare : NSObject

+ (BOOL)compareWithString:(NSString *)aString string:(NSString *)bString;
+ (BOOL)compareWithObject:(id)aObject string:(NSString *)aString;
+ (BOOL)compareWithObject:(id)aObject object:(id)bObject;

+ (BOOL)isValidateEmail:(NSString *)email;

@end
