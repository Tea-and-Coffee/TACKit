//
//  TACDevice.h
//  TACKit
//
//  Created by masato_arai on 2015/09/225.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACDevice : NSObject

typedef NS_ENUM(NSInteger, TACUserInterfaceIdiom) {
    TACUserInterfaceIdiomUnspecified = -1,
    TACUserInterfaceIdiomPhone,             // iPhone and iPod touch style UI except iPhone 6 Plus
    TACUserInterfaceIdiomPhablet,           // iPhone 6 Plus style UI
    TACUserInterfaceIdiomPad                // iPad style UI
};

typedef NS_ENUM(NSInteger, TACUserInterfaceIdentifier) {
    TACUserInterfaceIdentifierUnspecified = -1,
    TACUserInterfaceIdentifierIPhone3,
    TACUserInterfaceIdentifierIPhone4,
    TACUserInterfaceIdentifierIPhone5,
    TACUserInterfaceIdentifierIPhone6,
    TACUserInterfaceIdentifierIPhone6_Plus,
    TACUserInterfaceIdentifierIPad,
    TACUserInterfaceIdentifierIPad_Retina,
    TACUserInterfaceIdentifierIPad_Retina_12_9
};

UIKIT_EXTERN NSString * const TACUserInterfaceIdiomUnspecifiedKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdiomPhoneKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdiomPhabletKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdiomPadKey;

UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierUnspecifiedKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPhone3Key;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPhone4Key;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPhone5Key;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPhone6Key;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPhone6_PlusKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPadKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPad_RetinaKey;
UIKIT_EXTERN NSString * const TACUserInterfaceIdentifierIPad_Retina_12_9Key;

+ (TACUserInterfaceIdiom)idiom;
+ (NSString *)idiomString;
+ (BOOL)isPhone;
+ (BOOL)isPhablet;
+ (BOOL)isPad;

+ (TACUserInterfaceIdentifier)identifier;
+ (NSString *)identifierString;
+ (BOOL)isUnspecified;
+ (BOOL)isIPhone3;
+ (BOOL)isIPhone4;
+ (BOOL)isIPhone5;
+ (BOOL)isIPhone6;
+ (BOOL)isIPhone6Plus;
+ (BOOL)isIPad;
+ (BOOL)isIPadRetina;
+ (BOOL)isIPadRetina129;

@end
