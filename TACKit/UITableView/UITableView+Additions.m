//
//  UITableView+Additions.m
//  TACKit
//
//  Created by masato_arai on 2016/03/29.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UITableView+Additions.h"

@implementation UITableView (Additions)

- (NSIndexPath *)indexPathForTopRow {
    NSInteger section = self.numberOfSections - 1;
    if (section == -1) { return nil; }
    
    NSInteger row = [self numberOfRowsInSection:section] - 1;
    if (row == -1) { return nil; }
    
    return [NSIndexPath indexPathForRow:0 inSection:0];
}

- (NSIndexPath *)indexPathForBottomRow {
    NSInteger section = self.numberOfSections - 1;
    if (section == -1) { return nil; }
    
    NSInteger row = [self numberOfRowsInSection:section] - 1;
    if (row == -1) { return nil; }
    
    return [NSIndexPath indexPathForRow:row inSection:section];
}

/** Subviewから、その親のCellを取得する */

- (nullable __kindof UITableViewCell *)cellForRowAtSubview:(UIView *)subview {
    CGPoint convertedPoint = [subview convertPoint:CGPointZero toView:self];
    NSIndexPath *indexPath = [self indexPathForRowAtPoint:convertedPoint];
    UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
    return cell;
}

- (void)deselectRowsWithAnimated:(BOOL)animated {
    for (NSIndexPath *indexPath in self.indexPathsForSelectedRows) {
        [self deselectRowAtIndexPath:indexPath animated:animated];
    }
}

@end
