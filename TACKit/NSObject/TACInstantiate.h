//
//  TACInstantiate.h
//  MobileMessenger
//
//  Created by masato_arai on 2015/05/12.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TACInstantiate : NSObject

+ (id)instantiateViewControllerWithStoryboard:(NSString *)storyboardName bundle:(NSBundle *)storyboardBundleOrNil viewControllerIdentifier:(NSString *)identifier;

@end
