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

NSString * const TACUserInterfaceIdiomUnspecifiedKey            = @"Unspecified";
NSString * const TACUserInterfaceIdiomPhoneKey                  = @"Phone";
NSString * const TACUserInterfaceIdiomPhabletKey                = @"Phablet";
NSString * const TACUserInterfaceIdiomPadKey                    = @"Pad";

NSString * const TACUserInterfaceIdentifierUnspecifiedKey       = @"Unspecified";
NSString * const TACUserInterfaceIdentifierIPhone3Key           = @"iPhone 3";
NSString * const TACUserInterfaceIdentifierIPhone4Key           = @"iPhone 4";
NSString * const TACUserInterfaceIdentifierIPhone5Key           = @"iPhone 5";
NSString * const TACUserInterfaceIdentifierIPhone6Key           = @"iPhone 6";
NSString * const TACUserInterfaceIdentifierIPhone6_PlusKey      = @"iPhone 6 Plus";
NSString * const TACUserInterfaceIdentifierIPadKey              = @"iPad";
NSString * const TACUserInterfaceIdentifierIPad_RetinaKey       = @"iPad Retina";
NSString * const TACUserInterfaceIdentifierIPad_Retina_12_9Key  = @"iPad Retina 12.9";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
static CGFloat const kWidth_3_5         =  320.0;
static CGFloat const kWidth_4_0         =  320.0;
static CGFloat const kWidth_4_7         =  375.0;
static CGFloat const kWidth_5_5         =  414.0;
static CGFloat const kWidth_IPad        =  768.0;
static CGFloat const kWidth_IPad_12_9   = 1024.0;
#pragma clang diagnostic pop;

static CGFloat const kHeight_3_5        =  480.0;
static CGFloat const kHeight_4_0        =  568.0;
static CGFloat const kHeight_4_7        =  667.0;
static CGFloat const kHeight_5_5        =  736.0;
static CGFloat const kHeight_IPad       = 1024.0;
static CGFloat const kHeight_IPad_12_9  = 1366.0;


#pragma mark
#pragma mark TACUserInterfaceIdiom

+ (TACUserInterfaceIdiom)idiom {
    TACUserInterfaceIdentifier identifier = [self identifier];
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
        case TACUserInterfaceIdentifierIPad_Retina_12_9:
            return TACUserInterfaceIdiomPad;
    }
    return TACUserInterfaceIdiomUnspecified;
}

+ (NSString *)idiomString {
    TACUserInterfaceIdiom idiom = [self idiom];
    switch (idiom) {
        case TACUserInterfaceIdiomUnspecified:
            return TACUserInterfaceIdiomUnspecifiedKey;
        case TACUserInterfaceIdiomPhone:
            return TACUserInterfaceIdiomPhoneKey;
        case TACUserInterfaceIdiomPhablet:
            return TACUserInterfaceIdiomPhabletKey;
        case TACUserInterfaceIdiomPad:
            return TACUserInterfaceIdiomPadKey;
    }
}

+ (BOOL)isPhone {
    return [self idiom] == TACUserInterfaceIdiomPhone;
}

+ (BOOL)isPhablet {
    return [self idiom] == TACUserInterfaceIdiomPhablet;
}

+ (BOOL)isPad {
    return [self idiom] == TACUserInterfaceIdiomPad;
}


#pragma mark
#pragma mark TACUserInterfaceIdentifier

+ (TACUserInterfaceIdentifier)identifier {
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
            } else if ([TACScreenUtilities boundsSize].height == kHeight_IPad_12_9) {
                return TACUserInterfaceIdentifierIPad_Retina_12_9;
            }
        }
    }
    return TACUserInterfaceIdentifierUnspecified;
}

+ (NSString *)identifierString {
    TACUserInterfaceIdentifier identifier = [self identifier];
    switch (identifier) {
        case TACUserInterfaceIdentifierUnspecified:
            return TACUserInterfaceIdentifierUnspecifiedKey;
        case TACUserInterfaceIdentifierIPhone3:
            return TACUserInterfaceIdentifierIPhone3Key;
        case TACUserInterfaceIdentifierIPhone4:
            return TACUserInterfaceIdentifierIPhone4Key;
        case TACUserInterfaceIdentifierIPhone5:
            return TACUserInterfaceIdentifierIPhone5Key;
        case TACUserInterfaceIdentifierIPhone6:
            return TACUserInterfaceIdentifierIPhone6Key;
        case TACUserInterfaceIdentifierIPhone6_Plus:
            return TACUserInterfaceIdentifierIPhone6_PlusKey;
        case TACUserInterfaceIdentifierIPad:
            return TACUserInterfaceIdentifierIPadKey;
        case TACUserInterfaceIdentifierIPad_Retina:
            return TACUserInterfaceIdentifierIPad_RetinaKey;
        case TACUserInterfaceIdentifierIPad_Retina_12_9:
            return TACUserInterfaceIdentifierIPad_Retina_12_9Key;
    }
}

+ (BOOL)isUnspecified {
    return [self identifier] == TACUserInterfaceIdentifierUnspecified;
}

+ (BOOL)isIPhone3 {
    return [self identifier] == TACUserInterfaceIdentifierIPhone3;
}

+ (BOOL)isIPhone4 {
    return [self identifier] == TACUserInterfaceIdentifierIPhone4;
}

+ (BOOL)isIPhone5 {
    return [self identifier] == TACUserInterfaceIdentifierIPhone5;
}

+ (BOOL)isIPhone6 {
    return [self identifier] == TACUserInterfaceIdentifierIPhone6;
}

+ (BOOL)isIPhone6Plus {
    return [self identifier] == TACUserInterfaceIdentifierIPhone6_Plus;
}

+ (BOOL)isIPad {
    return [self identifier] == TACUserInterfaceIdentifierIPad;
}

+ (BOOL)isIPadRetina {
    return [self identifier] == TACUserInterfaceIdentifierIPad_Retina;
}

+ (BOOL)isIPadRetina129 {
    return [self identifier] == TACUserInterfaceIdentifierIPad_Retina_12_9;
}

@end
