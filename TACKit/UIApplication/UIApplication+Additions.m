//
//  UIApplication+Additions.m
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import "UIApplication+Additions.h"

@implementation UIApplication (Additions)

- (void)tac_openURL:(NSURL *)url {
    if ([self respondsToSelector:@selector(openURL:options:completionHandler:)]) {
        [self openURL:url options:@{} completionHandler:nil];
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [self openURL:url];
#pragma clang diagnostic pop
    }
}

- (UIViewController *)topViewController {
    UIViewController *top = UIApplication.sharedApplication.keyWindow.rootViewController;
    
    while (top.presentedViewController) {
        top = top.presentedViewController;
    }
    
    return top;
}

- (UIViewController *)topViewControllerIsNotBeingDismissed {
    UIViewController *top = UIApplication.sharedApplication.keyWindow.rootViewController;
    
    while (top.presentedViewController && !top.presentedViewController.isBeingDismissed) {
        top = top.presentedViewController;
    }
    
    return top;
}

@end
