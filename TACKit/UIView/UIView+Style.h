//
//  UIView+Style.h
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TACViewStyle) {
    TACViewStyleDefault,
    TACViewStyleCircle
};

@interface UIView (Style)

- (void)setStyle:(TACViewStyle)style;

@end
