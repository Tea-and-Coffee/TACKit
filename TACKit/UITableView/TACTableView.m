//
//  TACTableView.m
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACTableView.h"

@implementation TACTableView

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

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) [self initializator];
    return self;
}

- (void)initializator {
    // Initialization code
}

@end
