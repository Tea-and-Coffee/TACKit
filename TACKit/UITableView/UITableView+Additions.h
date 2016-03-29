//
//  UITableView+Additions.h
//  TACKit
//
//  Created by masato_arai on 2016/03/29.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Additions)

- (nullable __kindof UITableViewCell *)cellForRowAtSubview:(UIView *)subview;

@end

NS_ASSUME_NONNULL_END
