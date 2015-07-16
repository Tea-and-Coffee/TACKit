//
//  UIView+Common.m
//  MobileMessenger
//
//  Created by companion_ios on 20150525.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
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

- (void)awaker {
    // Initialization code
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

@end
