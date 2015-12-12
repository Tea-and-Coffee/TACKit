//
//  TACScreenUtilities.m
//  TACKit
//
//  Created by masato_arai on 2015/06/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACScreenUtilities.h"
#import "TACSystemVersion.h"

@implementation TACScreenUtilities

+ (CGRect)bounds {
    CGRect bounds = [UIScreen mainScreen].bounds;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.height, bounds.size.width);
    }
    return bounds;
}

+ (CGSize)boundsSize {
    CGSize size = [UIScreen mainScreen].bounds.size;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(size.height, size.width);
    }
    return size;
}

+ (CGRect)applicationFrame {
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGRectMake(frame.origin.x, frame.origin.y, frame.size.height, frame.size.width);
    }
    return frame;
}

+ (CGSize)applicationFrameSize {
    CGSize size = [UIScreen mainScreen].applicationFrame.size;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0.0") &&  UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(size.height, size.width);
    }
    return size;
}

@end
