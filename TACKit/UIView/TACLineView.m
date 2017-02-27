//
//  TACLineView.m
//  TACKit
//
//  Created by masato_arai on 2015/09/08.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACLineView.h"

@implementation TACLineView

- (instancetype)init {
    self = [super init];
    if (self) [self initializator];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) [self initializator];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) [self initializator];
    return self;
}

- (void)initializator {
    self.backgroundColor = [UIColor clearColor];
    _extraFine = YES;
    _lineColor = [UIColor grayColor];
}

- (void)drawRect:(CGRect)rect {
    CGFloat dotSize = MIN(rect.size.width, rect.size.height);
    CGFloat scale = _extraFine ? 1.0 : [UIScreen mainScreen].scale;
    
    [_lineColor set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = dotSize * scale;
    
    // 描画位置を設定
    [path moveToPoint:CGPointZero];
    if (rect.size.width > rect.size.height) {
        [path addLineToPoint:CGPointMake(rect.size.width, 0)];
    } else {
        [path addLineToPoint:CGPointMake(0, rect.size.height)];
    }
    
    //描画
    [path stroke];
}

@end
