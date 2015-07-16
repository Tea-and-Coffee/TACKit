//
//  TACInstantiate.h
//  MobileMessenger
//
//  Created by companion_ios on 20150512.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TACInstantiate : NSObject

+ (id)instantiateViewControllerWithStoryboard:(NSString *)storyboardName bundle:(NSBundle *)storyboardBundleOrNil viewControllerIdentifier:(NSString *)identifier;

@end
