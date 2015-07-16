//
//  UIView+Debug.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Debug)

#ifdef DEBUG
- (NSString *)recursiveDescription;
#endif

- (void)debugMode;

@end
