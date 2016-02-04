//
//  HTTPBasicAuthenticationViewController.m
//  TACKitExample
//
//  Created by Arai on 2016/02/04.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "HTTPBasicAuthenticationViewController.h"
#import "NSURLCredentialStorage+Authentication.h"

NSString * const sample_url         = @"http://www.chama.ne.jp/htaccess_sample/index.htm"; // 注意: iOS 9以降は、ATS(App Transport Security)を回避する必要有り(http://nlogic.jp/?p=412)
NSString * const sample_id          = @"chama";
NSString * const sample_password    = @"1111";
NSString * const sample_host        = @"www.chama.ne.jp";
NSInteger  const sample_port        = 80;
NSString * const sample_protocol    = @"http";
NSString * const sample_realm       = @"Input ID and Password.";

@interface HTTPBasicAuthenticationViewController ()

@end

@implementation HTTPBasicAuthenticationViewController

- (void)initializator {
    self.title = @"HTTPBasicAuthentication";
    
    // Basic認証
    [[NSURLCredentialStorage sharedCredentialStorage] setHTTPBasicAuthenticationWithUser:sample_id password:sample_password host:sample_host port:sample_port protocol:sample_protocol realm:sample_realm];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Basic認証付きのWebページが閲覧出来るなら、認証が通ったことになる
    _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_webView];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:sample_url]]];
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
