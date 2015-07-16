//
//  UIAlertView+HTTPStatus.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "UIAlertView+HTTPStatus.h"
#import "TACDebugLog.h"

@implementation UIAlertView (HTTPStatus)

- (instancetype)initWithHttpStatusCode:(NSInteger)statusCode delegate:(id)aDelegate {
    ALog(@"statusCode: %zd", statusCode);
    NSString *title = @"Http Status Code Error";
    NSString *message = [@(statusCode) stringValue];
    
    switch (statusCode) {
        case OK:
        case Created:
        case Accepted:
        case Non_AuthoritativeInformation:
        case NoContent:
        case ResetContent:
        case PartialContent:
        case Multi_Status:
        case IMUsed:
            return 0;
    }
    
    self = [self initWithTitle:title
                       message:message
                      delegate:aDelegate
             cancelButtonTitle:nil
             otherButtonTitles:@"OK", nil];
    return self;
}

@end
