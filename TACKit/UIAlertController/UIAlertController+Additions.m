//
//  UIAlertController+Additions.m
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import "UIAlertController+Additions.h"

@implementation UIAlertController (Additions)

+ (instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message {
    return [self alertWithTitle:title message:message actionTitle:@"OK"];
}

+ (instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message actionTitle:(nullable NSString *)actionTitle {
    return [[self alloc] initWithTitle:title message:message actionTitle:actionTitle];
}

- (instancetype)initWithTitle:(nullable NSString *)title message:(nullable NSString *)message actionTitle:(nullable NSString *)actionTitle {
    self = [UIAlertController alertControllerWithTitle:title
                                               message:message
                                        preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:nil];
    [self addAction:action];
    
    if ([self respondsToSelector:@selector(preferredAction)]) {
        self.preferredAction = action;
    }
    
    return self;
}

+ (instancetype)alertWithError:(NSError *)error {
    return [[self alloc] initWithError:error];
}

- (instancetype)initWithError:(NSError *)error {
    // title
    NSString *title = error.localizedDescription;
    
    // message
    NSMutableArray<NSString *> *messages = [NSMutableArray array];
    if (error.localizedFailureReason) {
        [messages addObject:error.localizedFailureReason];
    }
    if (error.localizedRecoverySuggestion) {
        [messages addObject:error.localizedRecoverySuggestion];
    }
    NSString *message = messages.count ? [messages componentsJoinedByString:@"\n"] : nil;
    
    // actionTitle
    NSArray<NSString *> *options = error.localizedRecoveryOptions;
    NSString *actionTitle = options.count ? options[0] : @"OK";
    
    return [self initWithTitle:title message:message actionTitle:actionTitle];
}

+ (instancetype)alertWithException:(NSException *)exception {
    return [[self alloc] initWithException:exception];
}

- (instancetype)initWithException:(NSException *)exception {
    return [self initWithTitle:exception.name message:exception.reason actionTitle:@"Dissmiss"];
}

@end
