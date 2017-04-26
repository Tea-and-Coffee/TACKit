//
//  UINavigationController+Additions.h
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (Blocks)

///
typedef void (^_Nullable Completion)();
///
@property (nonatomic, copy) Completion completion;
///
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(Completion)completion;

@end

NS_ASSUME_NONNULL_END
