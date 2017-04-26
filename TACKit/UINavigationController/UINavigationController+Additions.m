//
//  UINavigationController+Additions.m
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 masato_arai. All rights reserved.
//

#import "UINavigationController+Additions.h"

@interface UINavigationController () <UINavigationControllerDelegate>

@end

@implementation UINavigationController (Blocks)

- (Completion)completion {
    return objc_getAssociatedObject(self, @selector(completion));
}

- (void)setCompletion:(Completion)completion {
    objc_setAssociatedObject(self, @selector(completion), completion, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(Completion)completion {
    self.delegate = self;
    self.completion = completion;
    [self pushViewController:viewController animated:animated];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.completion) {
        self.completion();
        self.completion = nil;
    }
}

@end
