//
//  TACScreenUtilities.m
//  MobileMessenger
//
//  Created by companion_ios on 20150604.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "TACScreenUtilities.h"
#import "TACSystemVersion.h"

@implementation TACScreenUtilities

+ (CGRect)bounds {
    CGRect bounds = [UIScreen mainScreen].bounds;
    if (SYSTEM_VERSION_LESS_THAN(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.height, bounds.size.width);
    }
    return bounds;
}

+ (CGSize)boundsSize {
    CGSize size = [UIScreen mainScreen].bounds.size;
    if (SYSTEM_VERSION_LESS_THAN(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(size.height, size.width);
    }
    return size;
}

+ (CGRect)applicationFrame {
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    if (SYSTEM_VERSION_LESS_THAN(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGRectMake(frame.origin.x, frame.origin.y, frame.size.height, frame.size.width);
    }
    return frame;
}

+ (CGSize)applicationFrameSize {
    CGSize size = [UIScreen mainScreen].applicationFrame.size;
    if (SYSTEM_VERSION_LESS_THAN(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(size.height, size.width);
    }
    return size;
}

@end
