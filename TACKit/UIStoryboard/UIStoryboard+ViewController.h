//
//  UIStoryboard+ViewController.h
//  TACKit
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (ViewController)

+ (nonnull __kindof UIViewController *)instantiateInitialViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil;
+ (nonnull __kindof UIViewController *)instantiateViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil vcIdentifier:(nonnull NSString *)vcIdentifier;

@end
