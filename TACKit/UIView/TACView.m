//
//  TACView.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/05/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACView.h"

@implementation TACView

- (void)initializator {
    // Initialization code
}

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

@end
