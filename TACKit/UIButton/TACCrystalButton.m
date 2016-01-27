//
//  TACCrystalButton.m
//  TACKit
//
//  Created by masato_arai on 2015/12/14.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACCrystalButton.h"

@implementation TACCrystalButton

- (void)setHighlighted:(BOOL)highlighted {
    super.highlighted = highlighted;
    
    if (highlighted) {
        self.backgroundColor = [self.tintColor colorWithAlphaComponent:0.2];
    } else {
        [UIView transitionWithView:self
                          duration:0.2
                           options:UIViewAnimationOptionCurveEaseOut
                        animations:^{
                            self.backgroundColor = [UIColor clearColor];
                        }
                        completion:nil];
    }
}

@end
