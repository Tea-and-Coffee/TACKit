//
//  TACVerticalTwoTitleView.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/05/28.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACVerticalTwoTitleView.h"
#import "TACColor.h"

@implementation TACVerticalTwoTitleView {
    UINavigationBar *_navigationBar;
}

- (void)initializator {
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.backgroundColor = [UIColor clearColor];
    
    _topLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _topLabel.font = [UIFont boldSystemFontOfSize:17.0];
    _topLabel.adjustsFontSizeToFitWidth = YES;
    _topLabel.minimumScaleFactor = 14.0 / 17.0;
    _topLabel.textAlignment = NSTextAlignmentCenter;
    _topLabel.textColor = GRAYCOLOR_FF58595A;
    _topLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_topLabel];
    
    _bottomLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _bottomLabel.font = [UIFont systemFontOfSize:11.0];
    _bottomLabel.adjustsFontSizeToFitWidth = YES;
    _bottomLabel.minimumScaleFactor = 11.0 / 11.0;
    _bottomLabel.textAlignment = NSTextAlignmentCenter;
    _bottomLabel.textColor = GRAYCOLOR_FFC7C7CC;
    _bottomLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_bottomLabel];
}

- (instancetype)initWithNavigationBar:(UINavigationBar *)navigationBar {
    _navigationBar = navigationBar;
    self = [super initWithFrame:navigationBar.bounds];
    if (self) [self initializator];
    return self;
}

/**
 * Override UIView method
 */
- (CGRect)frame {
    CGRect frame = [super frame];
    frame.size = [self sizeThatFits:frame.size withLayout:NO];
    return frame;
}

/**
 * Override UIView method
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect bounds = self.bounds;
    [self sizeThatFits:bounds.size withLayout:YES];
}

/**
 * Override UIView method
 */
- (CGSize)sizeThatFits:(CGSize)size {
    return [self sizeThatFits:size withLayout:NO];
}

/**
 * @param size Bounds size
 * @param withLayout YES if set frame of subviews.
 */
- (CGSize)sizeThatFits:(CGSize)size withLayout:(BOOL)withLayout {
    CGRect topLabelFrame;
    topLabelFrame.origin.x = 0;
    topLabelFrame.origin.y = 0;
    topLabelFrame.size.width = MIN(size.width, [_topLabel sizeThatFits:topLabelFrame.size].width);
    topLabelFrame.size.height = size.height * 2 / 3;
    
    CGRect bottomLabelFrame;
    bottomLabelFrame.origin.x = 0;
    bottomLabelFrame.origin.y = size.height * 2 / 3;
    bottomLabelFrame.size.width = MIN(size.width, [_bottomLabel sizeThatFits:bottomLabelFrame.size].width);
    bottomLabelFrame.size.height = size.height * 1 / 3;
    
    float fabs = fabsf((float)topLabelFrame.size.width - (float)bottomLabelFrame.size.width);
    if (topLabelFrame.size.width < bottomLabelFrame.size.width) {
        topLabelFrame.origin.x = fabs / 2;
    } else if (topLabelFrame.size.width > bottomLabelFrame.size.width) {
        bottomLabelFrame.origin.x = fabs / 2;
    }
    
    if (withLayout) {
        _topLabel.frame = topLabelFrame;
        _bottomLabel.frame = bottomLabelFrame;
    }
    
    size.width = MAX(topLabelFrame.size.width, bottomLabelFrame.size.width);
    return size;
}

- (void)setTopTitle:(NSString *)topTitle bottomTitle:(NSString *)bottomTitle {
    _topLabel.text = topTitle;
    _bottomLabel.text = bottomTitle;
}

@end
