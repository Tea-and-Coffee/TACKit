//
//  TACScreenUtilities.h
//  TACKit
//
//  Created by masato_arai on 2015/06/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACScreenUtilities : NSObject

+ (CGRect)bounds;
+ (CGSize)boundsSize;
+ (CGRect)applicationFrame NS_DEPRECATED_IOS(2_0, 9_0, "Use -[TACScreenUtilities bounds]") __TVOS_PROHIBITED;
+ (CGSize)applicationFrameSize NS_DEPRECATED_IOS(2_0, 9_0, "Use -[TACScreenUtilities bounds]") __TVOS_PROHIBITED;

@end
