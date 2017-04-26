//
//  UIImage+View.h
//  TACKit
//
//  Created by masato_arai on 2016/03/28.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (View)

+ (UIImage *)imageWithView:(UIView *)view;
- (instancetype)initWithView:(UIView *)view;

@end
