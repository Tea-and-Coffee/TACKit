//
//  UIStoryboard+ViewController.h
//  TACKitExample
//
//  Created by 新井雅人 on 2015/11/27.
//  Copyright © 2015年 masato_arai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (ViewController)

+ (nonnull __kindof UIViewController *)instantiateInitialViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil;
+ (nonnull __kindof UIViewController *)instantiateViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil vcIdentifier:(nonnull NSString *)vcIdentifier;

@end
