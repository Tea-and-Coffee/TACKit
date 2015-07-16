//
//  UIAlertView+Error.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Error)

- (instancetype)initWithError:(NSError *)error delegate:(id)aDelegate;
- (instancetype)initWithException:(NSException *)exception delegate:(id)aDelegate;

@end
