//
//  TACVerticalTwoTitleView.h
//  TACKit
//
//  Created by masato_arai on 2015/05/28.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACVerticalTwoTitleView : UIView

@property (nonatomic, strong, readonly) UILabel *topLabel;
@property (nonatomic, strong, readonly) UILabel *bottomLabel;

- (instancetype)initWithNavigationBar:(UINavigationBar *)navigationBar;

- (void)setTopTitle:(NSString *)topTitle bottomTitle:(NSString *)bottomTitle;

@end
