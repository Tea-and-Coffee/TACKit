//
//  UIAlertView+HTTPStatus.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertView (HTTPStatus)

- (instancetype)initWithHTTPStatusCode:(NSInteger)statusCode delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate;

@end

NS_ASSUME_NONNULL_END
