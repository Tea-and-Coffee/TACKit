//
//  NSObject+Common.h
//  TACKit
//
//  Created by masato_arai on 2015/05/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Common)

+ (NSString *)identifier;

@property (nonatomic, copy, readonly) NSArray<NSString *> *propertyNames;
@property (nonatomic, copy, readonly) NSDictionary<NSString *,NSString *> *properties;

@end
