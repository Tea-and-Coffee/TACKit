//
//  UIAlertView+Error.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertView (Error)

- (instancetype)initWithError:(NSError *)error delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate;
- (instancetype)initWithException:(NSException *)exception delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate;

@end

NS_ASSUME_NONNULL_END
