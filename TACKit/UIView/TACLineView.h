//
//  TACLineView.h
//  TACKit
//
//  Created by masato_arai on 2015/09/08.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * 線を描画する
 */

@interface TACLineView : UIView

@property (nonatomic, assign) BOOL extraFine;       // Default is YES.
@property (nonatomic, strong) UIColor *lineColor;   // Default is Gray.

@end
