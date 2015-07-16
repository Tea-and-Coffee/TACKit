//
//  TACInstantiate.m
//  MobileMessenger
//
//  Created by companion_ios on 20150512.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "TACInstantiate.h"

@implementation TACInstantiate

+ (id)instantiateViewControllerWithStoryboard:(NSString *)storyboardName bundle:(NSBundle *)storyboardBundleOrNil viewControllerIdentifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:storyboardBundleOrNil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:identifier];
    return vc;
}

@end
