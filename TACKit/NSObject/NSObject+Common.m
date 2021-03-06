//
//  NSObject+Common.m
//  TACKit
//
//  Created by masato_arai on 2015/05/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+Common.h"
#import "NSNull+Additions.h"
#import "TACRuntimeUtilities.h"

@implementation NSObject (Common)

+ (NSString *)identifier {
    return NSStringFromClass([self class]);
}

/** クラスで宣言されているプロパティー名一覧を取得する */
- (NSArray<NSString *> *)propertyNames {
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    NSMutableArray<NSString *> *m_propertyNames = [NSMutableArray array];
    
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        const char *c_propertyName = property_getName(property);
        if (c_propertyName) {
            NSString *propertyName = @(c_propertyName);
            [m_propertyNames addObject:propertyName];
        }
    }
    free(properties);
    
    return [m_propertyNames copy];
}

/** クラスで宣言されているプロパティー名と型を連想配列で取得する */
- (NSDictionary<NSString *, NSString *> *)properties {
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    NSMutableDictionary *m_properties = [NSMutableDictionary dictionary];
    
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        const char *c_propertyType = property_getType(property);
        const char *c_propertyName = property_getName(property);
        if (c_propertyType && c_propertyName) {
            NSString *propertyType = @(c_propertyType);
            NSString *propertyName = @(c_propertyName);
            if (propertyType != nil && [NSNull notNull:propertyName]) {
                m_properties[propertyName] = propertyType;
            }
        }
    }
    free(properties);
    
    return [m_properties copy];
}

@end
