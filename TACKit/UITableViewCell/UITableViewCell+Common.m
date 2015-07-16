//
//  UITableViewCell+Common.m
//  MobileMessenger
//
//  Created by companion_ios on 20150527.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "UITableViewCell+Common.h"

@implementation UITableViewCell (Common)

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

@end
