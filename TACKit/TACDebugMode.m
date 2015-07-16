//
//  TACDebugMode.m
//  TACKit
//
//  Created by masato_arai on 2015/06/01.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
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
