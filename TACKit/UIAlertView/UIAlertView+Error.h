//
//  UIAlertView+Error.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Error)

- (instancetype)initWithError:(NSError *)error delegate:(id)aDelegate;
- (instancetype)initWithException:(NSException *)exception delegate:(id)aDelegate;

@end
