//
//  UIView+Style.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "UIView+Style.h"

@implementation UIView (Style)

- (void)setStyle:(TACViewStyle)style {
    switch (style) {
        case TACViewStyleDefault: {
            // nil
            self.layer.cornerRadius = 0.0;                          // 元に戻す
            self.layer.masksToBounds = NO;                          // 元に戻す
            break;
        }
        case TACViewStyleCircle: {
            self.layer.cornerRadius = self.bounds.size.width / 2.0; // 円形に加工
            self.layer.masksToBounds = YES;                         // 円形に加工
            break;
        }
    }
}

@end
