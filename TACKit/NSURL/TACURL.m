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
    
    // NSURL
    DLog(@"dataRepresentation: %@", url.dataRepresentation);
    
    DLog(@"absoluteString: %@", url.absoluteString);
    DLog(@"relativeString: %@", url.relativeString);
    DLog(@"baseURL: %@", url.baseURL);
    DLog(@"absoluteURL: %@", url.absoluteURL);
    
    DLog(@"scheme: %@", url.scheme);
    DLog(@"resourceSpecifier: %@", url.resourceSpecifier);
    
    DLog(@"host: %@", url.host);
    DLog(@"port: %@", url.port);
    DLog(@"user: %@", url.user);
    DLog(@"password: %@", url.password);
    DLog(@"path: %@", url.path);
    DLog(@"fragment: %@", url.fragment);
    DLog(@"parameterString: %@", url.parameterString);
    DLog(@"query: %@", url.query);
    DLog(@"relativePath: %@", url.relativePath);
    
    DLog(@"hasDirectoryPath: %@", url.hasDirectoryPath ? @"YES" : @"NO");
    DLog(@"fileSystemRepresentation: %s", url.fileSystemRepresentation);
    DLog(@"FileURL: %@", url.isFileURL ? @"YES" : @"NO");
    DLog(@"standardizedURL: %@", url.standardizedURL);
    DLog(@"isFileReferenceURL: %@", url.isFileReferenceURL ? @"YES" : @"NO");
    DLog(@"filePathURL: %@", url.filePathURL);
    
    // NSURL (NSURLPathUtilities)
    DLog(@"pathComponents: %@", url.pathComponents);
    DLog(@"lastPathComponent: %@", url.lastPathComponent);
    DLog(@"pathExtension: %@", url.pathExtension);
    
    DLog(@"URLByStandardizingPath: %@", url.URLByStandardizingPath);
    DLog(@"URLByResolvingSymlinksInPath: %@", url.URLByResolvingSymlinksInPath);
}

/** [NSURL query]文字列をNSDictionaryに変換する */
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
