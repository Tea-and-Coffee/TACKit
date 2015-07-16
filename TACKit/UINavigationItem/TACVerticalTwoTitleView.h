//
//  TACVerticalTwoTitleView.h
//  MobileMessenger
//
//  Created by companion_ios on 20150528.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACVerticalTwoTitleView : UIView

@property (nonatomic, strong, readonly) UILabel *topLabel;
@property (nonatomic, strong, readonly) UILabel *bottomLabel;

- (instancetype)initWithNavigationBar:(UINavigationBar *)navigationBar;

- (void)setTopTitle:(NSString *)topTitle bottomTitle:(NSString *)bottomTitle;

@end
