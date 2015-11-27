//
//  UIStoryboard+ViewController.m
//  TACKit
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
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
