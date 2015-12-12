//
//  TACDevice.h
//  TACKit
//
//  Created by masato_arai on 2015/09/225.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

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
};

+ (TACUserInterfaceIdiom)userInterfaceIdiom;
+ (BOOL)isPhone;
+ (BOOL)isPhablet;
+ (BOOL)isPad;

+ (TACUserInterfaceIdentifier)userInterfaceIdentifier;
+ (BOOL)isUnspecified;
+ (BOOL)isIPhone3;
+ (BOOL)isIPhone4;
+ (BOOL)isIPhone5;
+ (BOOL)isIPhone6;
+ (BOOL)isIPhone6Plus;
+ (BOOL)isIPad;
+ (BOOL)isIPadRetina;

@end
