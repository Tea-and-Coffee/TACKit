//
//  NSURLCredentialStorage+Authentication.m
//  TACKit
//
//  Created by masato_arai on 2016/02/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSURLCredentialStorage+Authentication.h"

@implementation NSURLCredentialStorage (Authentication)

- (void)setHTTPBasicAuthenticationWithUser:(NSString *)user password:(NSString *)password host:(NSString *)host port:(NSInteger)port protocol:(nullable NSString *)protocol realm:(nullable NSString *)realm {
    NSURLCredential *credential = [NSURLCredential credentialWithUser:user password:password persistence:NSURLCredentialPersistenceForSession];
    NSURLProtectionSpace *protectionSpace = [[NSURLProtectionSpace alloc] initWithHost:host port:port protocol:protocol realm:realm authenticationMethod:NSURLAuthenticationMethodHTTPBasic];
    [self setCredential:credential forProtectionSpace:protectionSpace];
}

@end
