//
//  UIImage+View.m
//  TACKit
//
//  Created by masato_arai on 2016/03/28.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIImage+View.h"

@implementation UIImage (View)

/** UIViewをUIImageに変換する */

+ (UIImage *)imageWithView:(UIView *)view {
    return [[self alloc] initWithView:view];
}

/** UIViewをUIImageに変換する */

- (instancetype)initWithView:(UIView *)view {
    self = [super init];
    if (self) {
        // UIView サイズの画像コンテキストを確保
        UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, 0);
        
        // 開始した画像コンテキストを取得
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        // 画像化する部分の位置調整
        CGContextTranslateCTM(context, -view.frame.origin.x, -view.frame.origin.y);
        
        // 画像出力
        [view.layer renderInContext:context];
        
        // UIImage化
        self = UIGraphicsGetImageFromCurrentImageContext();
        
        // コンテキスト破棄
        UIGraphicsEndImageContext();
    }
    return self;
}

@end
