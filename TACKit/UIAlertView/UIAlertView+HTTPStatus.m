//
//  UIAlertView+HTTPStatus.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIAlertView+HTTPStatus.h"
#import "TACDebugLog.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
@implementation UIAlertView (HTTPStatus)
#pragma clang diagnostic pop

- (instancetype)initWithHttpStatusCode:(HTTPStatusCode)statusCode delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate {
    if (statusCode != OK) {
        ALog(@"Http Status Code: %zd", statusCode);
    }
    if (statusCode >= OK && statusCode <= MultipleChoices) {
        return nil;
    }
    
    NSString *title = @"Http Status Code";
    NSString *message = @(statusCode).stringValue;
    
    self = [self initWithTitle:title message:message delegate:delegate cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    return self;
}

@end
