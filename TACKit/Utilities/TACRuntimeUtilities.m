//
//  TACRuntimeUtilities.m
//  TACKit
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACRuntimeUtilities.h"

@implementation TACRuntimeUtilities

+ (void)swizzleImplementations:(Class)class1 selector:(SEL)target1 class:(Class)class2 selector:(SEL)target2 {
    Method m1 = class_getInstanceMethod(class1, target1);
    Method m2 = class_getInstanceMethod(class2, target2);
    method_exchangeImplementations(m1, m2);
}

const char *property_getType(objc_property_t property) {
    const char *attributes = property_getAttributes(property);
    char buffer[1 + strlen(attributes)];
    strcpy(buffer, attributes);
    char *state = buffer, *attribute;
    while ((attribute = strsep(&state, ",")) != NULL) {
        if (attribute[0] == 'T' && attribute[1] != '@') {
            return (const char *)[[NSData dataWithBytes:(attribute + 1) length:strlen(attribute) - 1] bytes];
        } else if (attribute[0] == 'T' && attribute[1] == '@' && strlen(attribute) == 2) {
            return "id";
        } else if (attribute[0] == 'T' && attribute[1] == '@') {
            return (const char *)[[NSData dataWithBytes:(attribute + 3) length:strlen(attribute) - 4] bytes];
        }
    }
    return "";
}

@end
