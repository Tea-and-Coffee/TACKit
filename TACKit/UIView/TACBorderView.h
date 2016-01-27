//
//  TACBorderView.h
//  TACKit
//
//  Created by masato_arai on 2015/12/10.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, TACBorder) {
    TACBorderNone   = 0,
    TACBorderTop    = 1 << 0,
    TACBorderLeft   = 1 << 1,
    TACBorderBotton = 1 << 2,
    TACBorderRight  = 1 << 3,
    TACBorderAll    = NSUIntegerMax
};

@interface TACBorderView : UIView

@property (nonatomic, assign) TACBorder borders;
@property (nonatomic, assign) CGColorRef borderColor;
@property (nonatomic, assign) CGFloat borderWidth;

@end
