//
//  TACBorderView.m
//  TACKit
//
//  Created by masato_arai on 2015/12/10.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACBorderView.h"

@implementation TACBorderView

#pragma mark
#pragma mark Accessor

- (void)setBorders:(TACBorder)borders {
    _borders = borders;
    [self setNeedsDisplay];
}

- (void)setBorderColor:(CGColorRef)borderColor {
    _borderColor = borderColor;
    [self setNeedsDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    [self setNeedsDisplay];
}

#pragma mark
#pragma mark Life Cycle

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
    _borders = TACBorderNone;
    _borderColor = [UIColor blackColor].CGColor;
    _borderWidth = 1.0;
}

- (void)drawRect:(CGRect)rect {
    if (_borders & TACBorderNone) {
        return;
    }
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, _borderWidth);
    CGContextSetStrokeColorWithColor(ctx, _borderColor);
    
    if (_borders & TACBorderTop) {
        CGContextMoveToPoint(ctx, 0, 0);
        CGContextAddLineToPoint(ctx, self.frame.size.width, 0);
        CGContextStrokePath(ctx);
    }
    if (_borders & TACBorderLeft) {
        CGContextMoveToPoint(ctx, 0, 0);
        CGContextAddLineToPoint(ctx, 0, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
    if (_borders & TACBorderBotton) {
        CGContextMoveToPoint(ctx, 0, self.frame.size.height);
        CGContextAddLineToPoint(ctx, self.frame.size.width, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
    if (_borders & TACBorderRight) {
        CGContextMoveToPoint(ctx, self.frame.size.width, 0);
        CGContextAddLineToPoint(ctx, self.frame.size.width, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
}

@end
