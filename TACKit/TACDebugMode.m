//
//  TACDebugMode.m
//  MobileMessenger
//
//  Created by companion_ios on 20150601.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "TACDebugMode.h"

#ifdef DEBUG
static BOOL const showBackGroundColor = NO;
#else
static BOOL const showBackGroundColor = NO;
#endif

@implementation TACDebugMode

+ (BOOL)showBackGroundColor {
    return showBackGroundColor;
}

@end
