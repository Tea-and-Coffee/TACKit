//
//  TACViewController.m
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACViewController.h"

@interface TACViewController ()

@end

@implementation TACViewController

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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) [self initializator];
    return self;
}

- (void)initializator {
    // Initialization code
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
}

@end
