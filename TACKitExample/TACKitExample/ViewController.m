//
//  ViewController.m
//  TACKitExample
//
//  Created by masato_arai on 2015/07/16.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "ViewController.h"
#import "HTTPBasicAuthenticationViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (NSMutableArray<ExampleModel *> *)examples {
    if (!_examples) {
        _examples = [NSMutableArray array];
        
        {
            ExampleModel *example = [ExampleModel new];
            example.class = [HTTPBasicAuthenticationViewController class];
            example.title = @"HTTPBasicAuthentication";
            [_examples addObject:example];
        }
    }
    return _examples;
}

- (void)initializator {
    self.title = @"Example List";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [_tableView flashScrollIndicators];
    [_tableView deselectRowAtIndexPath:_tableView.indexPathForSelectedRow animated:YES];
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


#pragma mark <UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.examples.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    ExampleModel *example = self.examples[row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[UITableViewCell reuseIdentifier] forIndexPath:indexPath];
    cell.textLabel.text = example.title;
    return cell;
}

#pragma mark <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    ExampleModel *example = self.examples[row];
    
    UIViewController *vc = [UIStoryboard instantiateViewControllerWithStoryboard:[example.class identifier] vcIdentifier:[example.class identifier]];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
