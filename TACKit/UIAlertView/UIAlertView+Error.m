//
//  UIAlertView+Error.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIAlertView+Error.h"
#import "TACDebugLog.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
@implementation UIAlertView (Error)
#pragma clang diagnostic pop

- (instancetype)initWithError:(NSError *)error delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate {
    ALog(@"NSError: %@", error);
    
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
    
    // otherButtonTitles
    NSArray<NSString *> *options = error.localizedRecoveryOptions;
    NSString *aOption = options.count ? options[0] : @"OK";
    
    self = [self initWithTitle:title message:message delegate:delegate cancelButtonTitle:nil otherButtonTitles:aOption, nil];
    return self;
}

- (instancetype)initWithException:(NSException *)exception delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate {
    self = [self initWithTitle:exception.name message:exception.reason delegate:delegate cancelButtonTitle:nil otherButtonTitles:@"Dissmiss", nil];
    return self;
}

@end
