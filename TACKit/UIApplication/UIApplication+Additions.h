//
//  UIApplication+Additions.h
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (Additions)

- (void)tac_openURL:(NSURL *)url;

@property (nonatomic, strong, readonly, nullable) UIViewController *topViewController;
@property (nonatomic, strong, readonly, nullable) UIViewController *topViewControllerIsNotBeingDismissed;

@end

NS_ASSUME_NONNULL_END
