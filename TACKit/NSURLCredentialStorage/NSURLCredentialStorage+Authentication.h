//
//  NSURLCredentialStorage+Authentication.h
//  TACKit
//
//  Created by masato_arai on 2016/02/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLCredentialStorage (Authentication)

/** Basic認証を行う */
- (void)setHTTPBasicAuthenticationWithUser:(NSString *)user password:(NSString *)password host:(NSString *)host port:(NSInteger)port protocol:(nullable NSString *)protocol realm:(nullable NSString *)realm;

@end

NS_ASSUME_NONNULL_END

/**
 * [How To Use]
 *
 * http://iphone-dev.g.hatena.ne.jp/laiso/20120301/1330611905
 */
