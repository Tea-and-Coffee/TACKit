//
//  NSHTTPCookieStorage+Additions.h
//  TACKit
//
//  Created by masato_arai on 2016/04/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSHTTPCookieStorage (Additions)

- (BOOL)hasCookies;
- (void)deleteCookies;
- (void)deleteCookies:(NSArray<NSHTTPCookie *> *)cookies;
- (void)deleteCookiesForURL:(NSURL *)URL;

@end

NS_ASSUME_NONNULL_END
