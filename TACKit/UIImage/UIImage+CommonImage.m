//
//  UIImage+CommonImage.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIImage+CommonImage.h"

@implementation UIImage (CommonImage)

+ (UIImage *)imageOfLaunchImage {
    NSString *imageName;
    if  (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (([UIScreen mainScreen].bounds.size.height > 480.0f)) {
            imageName = @"LaunchImage-700-568h";
        } else {
            imageName = @"LaunchImage-700";
        }
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        UIDeviceOrientation orientation = (UIDeviceOrientation)[UIApplication sharedApplication].statusBarOrientation;
        if (UIDeviceOrientationIsPortrait(orientation)) {
            imageName = @"LaunchImage-700-Portrait";
        } else {
            imageName = @"LaunchImage-700-Landscape";
        }
    }
    return [UIImage imageNamed:imageName];
}

@end
