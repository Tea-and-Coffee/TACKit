//
//  UIView+Debug.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Debug)

#ifdef DEBUG
- (NSString *)recursiveDescription;
#endif

- (void)debugMode;

@end
