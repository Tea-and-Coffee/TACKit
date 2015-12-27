//
//  UIView+Common.m
//  TACKit
//
//  Created by masato_arai on 2015/05/25.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIView+Common.h"

@implementation UIView (Common)

+ (UINib *)nib {
    NSString *nibName = NSStringFromClass([self class]);
    return [UINib nibWithNibName:nibName bundle:nil];
}

+ (instancetype)loadFromNib {
    NSString *nibName = NSStringFromClass([self class]);
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    return [nib instantiateWithOwner:self options:nil][0];
}

@end
