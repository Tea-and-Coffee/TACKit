//
//  ViewController.h
//  TACKitExample
//
//  Created by masato_arai on 2015/07/16.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TACViewController.h"
#import "ExampleModel.h"

@interface ViewController : TACViewController

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<ExampleModel *> *examples;

@end
