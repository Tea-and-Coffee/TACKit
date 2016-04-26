//
//  NSHTTPCookieStorage+Additions.m
//  TACKit
//
//  Created by masato_arai on 2016/04/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSHTTPCookieStorage+Additions.h"

@implementation NSHTTPCookieStorage (Additions)

- (BOOL)hasCookies {
    if (self.cookies.count) {
        return YES;
    }
    return NO;
}

- (void)deleteCookies {
    NSArray<NSHTTPCookie *> *cookies = self.cookies;
    [self deleteCookies:cookies];
}

- (void)deleteCookies:(NSArray<NSHTTPCookie *> *)cookies {
    [cookies enumerateObjectsUsingBlock:^(NSHTTPCookie * _Nonnull cookie, NSUInteger idx, BOOL * _Nonnull stop) {
        [self deleteCookie:cookie];
    }];
}

- (void)deleteCookiesForURL:(NSURL *)URL {
    NSArray<NSHTTPCookie *> *cookies = [self cookiesForURL:URL];
    [self deleteCookies:cookies];
}

@end
