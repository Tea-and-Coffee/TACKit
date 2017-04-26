//
//  UIImage+Orientation.h
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Orientation)

@property (nonatomic, assign, readonly) NSInteger angle;

@property (nonatomic, strong, readonly, nullable) UIImage *rotateUpImage;
@property (nonatomic, strong, readonly, nullable) UIImage *rotateDownImage;
@property (nonatomic, strong, readonly, nullable) UIImage *rotateLeftImage;
@property (nonatomic, strong, readonly, nullable) UIImage *rotateRightImage;

- (nullable UIImage *)rotateImageWithAngle:(NSInteger)angle;

@end

NS_ASSUME_NONNULL_END
