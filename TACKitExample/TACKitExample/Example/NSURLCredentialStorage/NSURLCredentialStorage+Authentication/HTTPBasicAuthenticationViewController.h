//
//  HTTPBasicAuthenticationViewController.h
//  TACKitExample
//
//  Created by masato_arai on 2016/02/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACViewController.h"

UIKIT_EXTERN NSString * const sample_url;
UIKIT_EXTERN NSString * const sample_id;
UIKIT_EXTERN NSString * const sample_password;
UIKIT_EXTERN NSString * const sample_host;
UIKIT_EXTERN NSInteger  const sample_port;
UIKIT_EXTERN NSString * const sample_protocol;
UIKIT_EXTERN NSString * const sample_realm;

@interface HTTPBasicAuthenticationViewController : TACViewController

@property (nonatomic, strong) UIWebView *webView;

@end
