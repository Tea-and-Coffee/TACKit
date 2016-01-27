//
//  TACDottedLineView.h
//  TACKit
//
//  Created by masato_arai on 2015/09/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * 点線を描画する
 */

@interface TACDottedLineView : UIView

@property (nonatomic, assign) BOOL extraFine;       // Default is NO.
@property (nonatomic, strong) UIColor *lineColor;   // Default is Black.

@end
