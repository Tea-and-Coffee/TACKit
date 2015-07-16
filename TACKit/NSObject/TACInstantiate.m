//
//  TACInstantiate.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/05/12.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACInstantiate.h"

@implementation TACInstantiate

+ (id)instantiateViewControllerWithStoryboard:(NSString *)storyboardName bundle:(NSBundle *)storyboardBundleOrNil viewControllerIdentifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:storyboardBundleOrNil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:identifier];
    return vc;
}

@end
