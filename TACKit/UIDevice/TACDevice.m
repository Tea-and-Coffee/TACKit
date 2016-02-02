//
//  TACDevice.m
//  TACKit
//
//  Created by masato_arai on 2015/09/225.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACDevice.h"
#import "TACScreenUtilities.h"

@implementation TACDevice

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
static CGFloat const kWidth_3_5         =  320.0;
static CGFloat const kWidth_4_0         =  320.0;
static CGFloat const kWidth_4_7         =  375.0;
static CGFloat const kWidth_5_5         =  414.0;
static CGFloat const kWidth_IPad        =  768.0;
static CGFloat const kWidth_IPad_Pro    = 1024.0;
#pragma clang diagnostic pop;

static CGFloat const kHeight_3_5        =  480.0;
static CGFloat const kHeight_4_0        =  568.0;
static CGFloat const kHeight_4_7        =  667.0;
static CGFloat const kHeight_5_5        =  736.0;
static CGFloat const kHeight_IPad       = 1024.0;
static CGFloat const kHeight_IPad_Pro   = 1366.0;


#pragma mark
#pragma mark TACUserInterfaceIdiom

+ (TACUserInterfaceIdiom)userInterfaceIdiom {
    TACUserInterfaceIdentifier identifier = [self userInterfaceIdentifier];
    switch (identifier) {
        case TACUserInterfaceIdentifierUnspecified:
            return TACUserInterfaceIdiomUnspecified;
        case TACUserInterfaceIdentifierIPhone3:
        case TACUserInterfaceIdentifierIPhone4:
        case TACUserInterfaceIdentifierIPhone5:
        case TACUserInterfaceIdentifierIPhone6:
            return TACUserInterfaceIdiomPhone;
        case TACUserInterfaceIdentifierIPhone6_Plus:
            return TACUserInterfaceIdiomPhablet;
        case TACUserInterfaceIdentifierIPad:
        case TACUserInterfaceIdentifierIPad_Retina:
        case TACUserInterfaceIdentifierIPad_Pro:
            return TACUserInterfaceIdiomPad;
    }
    return TACUserInterfaceIdiomUnspecified;
}

+ (BOOL)isPhone {
    return [self userInterfaceIdiom] == TACUserInterfaceIdiomPhone;
}

+ (BOOL)isPhablet {
    return [self userInterfaceIdiom] == TACUserInterfaceIdiomPhablet;
}

+ (BOOL)isPad {
    return [self userInterfaceIdiom] == TACUserInterfaceIdiomPad;
}


#pragma mark
#pragma mark TACUserInterfaceIdentifier

+ (TACUserInterfaceIdentifier)userInterfaceIdentifier {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if ([[UIScreen mainScreen] nativeScale] == 1.0) {
            if ([TACScreenUtilities boundsSize].height == kHeight_3_5) {
                return TACUserInterfaceIdentifierIPhone3;
            }
        } else if ([[UIScreen mainScreen] nativeScale] == 2.0) {
            if ([TACScreenUtilities boundsSize].height == kHeight_3_5) {
                return TACUserInterfaceIdentifierIPhone4;
            } else if ([TACScreenUtilities boundsSize].height == kHeight_4_0) {
                return TACUserInterfaceIdentifierIPhone5;
            } else if ([TACScreenUtilities boundsSize].height == kHeight_4_7) {
                return TACUserInterfaceIdentifierIPhone6;
            }
        } else if ([[UIScreen mainScreen] nativeScale] == 3.0) {
            if ([TACScreenUtilities boundsSize].height == kHeight_5_5) {
                return TACUserInterfaceIdentifierIPhone6_Plus;
            }
        }
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if ([[UIScreen mainScreen] nativeScale] == 1.0) {
            if ([TACScreenUtilities boundsSize].height == kHeight_IPad) {
                return TACUserInterfaceIdentifierIPad;
            }
        } else if ([[UIScreen mainScreen] nativeScale] == 2.0) {
            if ([TACScreenUtilities boundsSize].height == kHeight_IPad) {
                return TACUserInterfaceIdentifierIPad_Retina;
            } else if ([TACScreenUtilities boundsSize].height == kHeight_IPad_Pro) {
                return TACUserInterfaceIdentifierIPad_Pro;
            }
        }
    }
    return TACUserInterfaceIdentifierUnspecified;
}

+ (BOOL)isUnspecified {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierUnspecified;
}

+ (BOOL)isIPhone3 {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPhone3;
}

+ (BOOL)isIPhone4 {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPhone4;
}

+ (BOOL)isIPhone5 {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPhone5;
}

+ (BOOL)isIPhone6 {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPhone6;
}

+ (BOOL)isIPhone6Plus {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPhone6_Plus;
}

+ (BOOL)isIPad {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPad;
}

+ (BOOL)isIPadRetina {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPad_Retina;
}

+ (BOOL)isIPadPro {
    return [self userInterfaceIdentifier] == TACUserInterfaceIdentifierIPad_Pro;
}

@end
