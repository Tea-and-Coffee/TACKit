//
//  UIView+Debug.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "UIView+Debug.h"
#import "TACDebugMode.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation UIView (Debug)
#pragma clang diagnostic pop;

- (void)debugMode {
    if ([TACDebugMode showBackGroundColor]) {
        NSInteger r = (NSInteger)arc4random_uniform(255);
        NSInteger g = (NSInteger)arc4random_uniform(255);
        NSInteger b = (NSInteger)arc4random_uniform(255);
        CGFloat red = r / 255.0;
        CGFloat green = g / 255.0;
        CGFloat blue = b / 255.0;
        
        self.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:0.400];
    }
}

@end
