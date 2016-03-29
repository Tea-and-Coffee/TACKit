//
//  UITableView+Additions.m
//  TACKit
//
//  Created by masato_arai on 2016/03/29.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UITableView+Additions.h"

@implementation UITableView (Additions)

/** 受け取ったViewの、親となるUITableViewCellを返す */

- (nullable __kindof UITableViewCell *)cellForRowAtSubview:(UIView *)subview {
    CGPoint convertedPoint = [subview convertPoint:CGPointZero toView:self];
    NSIndexPath *indexPath = [self indexPathForRowAtPoint:convertedPoint];
    UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
    return cell;
}

@end
