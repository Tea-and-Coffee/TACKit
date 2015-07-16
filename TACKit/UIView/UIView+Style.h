//
//  UIView+Style.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TACViewStyle) {
    TACViewStyleDefault,
    TACViewStyleCircle
};

@interface UIView (Style)

- (void)setStyle:(TACViewStyle)style;

@end
