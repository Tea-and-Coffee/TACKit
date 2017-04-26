//
//  UIAlertController+Additions.h
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (Additions)

+ (instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message;
+ (instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message actionTitle:(nullable NSString *)actionTitle;

+ (instancetype)alertWithError:(NSError *)error;
+ (instancetype)alertWithException:(NSException *)exception;

@end

NS_ASSUME_NONNULL_END
