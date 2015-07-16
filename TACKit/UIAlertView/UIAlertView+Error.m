//
//  UIAlertView+Error.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "UIAlertView+Error.h"

@implementation UIAlertView (Error)

- (instancetype)initWithError:(NSError *)error delegate:(id)aDelegate {
    ALog(@"NSError: %@", error);
    NSString *title;
    NSString *message;
    
    if ([[error localizedFailureReason] length]) {
        title = [error localizedDescription];
        message = [error localizedFailureReason];
    } else {
        title = [error localizedDescription];
    }
    
    id alert = [self initWithTitle:title
                           message:message
                          delegate:aDelegate
                 cancelButtonTitle:nil
                 otherButtonTitles:@"OK", nil];
    return alert;
}

- (instancetype)initWithException:(NSException *)exception delegate:(id)aDelegate {
    id alert = [self initWithTitle:[exception name]
                           message:[exception reason]
                          delegate:aDelegate
                 cancelButtonTitle:nil
                 otherButtonTitles:@"Dissmiss", nil];
    return alert;
}

@end
