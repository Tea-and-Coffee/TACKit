//
//  TACURL.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACURL.h"
#import "TACDebugLog.h"

@implementation TACURL

- (void)printURL:(NSURL *)url {
    // Ex:
    // NSURL *url = [NSURL URLWithString:@"http://user:password@www.example.com:8080/hoge/fuga/index.html?a=1&b=2#test"];
    
    DLog(@"absoluteString: %@", [url absoluteString]);
    DLog(@"absoluteURL: %@", [url absoluteURL]);
    DLog(@"baseURL: %@", [url baseURL]);
    DLog(@"fragment: %@", [url fragment]);
    DLog(@"host: %@", [url host]);
    DLog(@"lastPathComponent: %@", [url lastPathComponent]);
    DLog(@"parameterString: %@", [url parameterString]);
    DLog(@"password: %@", [url password]);
    DLog(@"path: %@", [url path]);
    DLog(@"pathComponents: %@", [url pathComponents]);
    DLog(@"pathExtension: %@", [url pathExtension]);
    DLog(@"port: %@", [url port]);
    DLog(@"query: %@", [url query]);
    DLog(@"relativePath: %@", [url relativePath]);
    DLog(@"relativeString: %@", [url relativeString]);
    DLog(@"resourceSpecifier: %@", [url resourceSpecifier]);
    DLog(@"scheme: %@", [url scheme]);
    DLog(@"standardizedURL: %@", [url standardizedURL]);
    DLog(@"user: %@", [url user]);
}

/* [NSURL query]文字列をNSDictionaryに変換する */
- (NSDictionary *)dictionaryFromQuery:(NSString *)query {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSArray *pairs = [query componentsSeparatedByString:@"&"];
    
    for (NSString *pair in pairs) {
        NSRange range = [pair rangeOfString:@"="];
        NSString *key = range.length ? [pair substringToIndex:range.location] : pair;
        NSString *val = range.length ? [pair substringFromIndex:range.location+1] : @"";
        key = [key stringByReplacingOccurrencesOfString:@"+" withString:@" "];
        val = [val stringByReplacingOccurrencesOfString:@"+" withString:@" "];
        key = [self decode:key];
        val = [self decode:val];
        dict[key] = val;
    }
    return [dict copy];
}

- (NSString *)decode:(NSString *)value {
    return CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapes(NULL, (CFStringRef)value, CFSTR("")));
}

@end
