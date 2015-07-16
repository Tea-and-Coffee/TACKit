//
//  UITableViewCell+Common.m
//  TACKit
//
//  Created by masato_arai on 2015/05/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UITableViewCell+Common.h"

@implementation UITableViewCell (Common)

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

@end
