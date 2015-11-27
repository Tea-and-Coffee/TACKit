//
//  UIStoryboard+ViewController.m
//  TACKitExample
//
//  Created by 新井雅人 on 2015/11/27.
//  Copyright © 2015年 masato_arai. All rights reserved.
//

#import "UIStoryboard+ViewController.h"

@implementation UIStoryboard (ViewController)

+ (nonnull __kindof UIViewController *)instantiateInitialViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:storyboardBundleOrNil];
    UIViewController *vc = [storyboard instantiateInitialViewController];
    return vc;
}

+ (nonnull __kindof UIViewController *)instantiateViewControllerWithStoryboard:(nonnull NSString *)storyboardName bundle:(nullable NSBundle *)storyboardBundleOrNil vcIdentifier:(nonnull NSString *)vcIdentifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:storyboardBundleOrNil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:vcIdentifier];
    return vc;
}

@end
