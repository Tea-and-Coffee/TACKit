//
//  NSURL+Debug.m
//  TACKit
//
//  Created by masato_arai on 2016/03/28.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSURL+Debug.h"
#import "TACDebugLog.h"

@implementation NSURL (Debug)

- (void)dump {
    // Ex:
    // NSURL *url = [NSURL URLWithString:@"http://user:password@www.example.com:8080/hoge/fuga/index.html?a=1&b=2#test"];
    
    // NSURL
    if ([self respondsToSelector:@selector(dataRepresentation)]) {
        DLog(@"dataRepresentation: %@", self.dataRepresentation);
    }
    
    if ([self respondsToSelector:@selector(absoluteString)]) {
        DLog(@"absoluteString: %@", self.absoluteString);
    }
    if ([self respondsToSelector:@selector(relativeString)]) {
        DLog(@"relativeString: %@", self.relativeString);
    }
    if ([self respondsToSelector:@selector(baseURL)]) {
        DLog(@"baseURL: %@", self.baseURL);
    }
    if ([self respondsToSelector:@selector(absoluteURL)]) {
        DLog(@"absoluteURL: %@", self.absoluteURL);
    }
    
    if ([self respondsToSelector:@selector(scheme)]) {
        DLog(@"scheme: %@", self.scheme);
    }
    if ([self respondsToSelector:@selector(resourceSpecifier)]) {
        DLog(@"resourceSpecifier: %@", self.resourceSpecifier);
    }
    
    if ([self respondsToSelector:@selector(host)]) {
        DLog(@"host: %@", self.host);
    }
    if ([self respondsToSelector:@selector(port)]) {
        DLog(@"port: %@", self.port);
    }
    if ([self respondsToSelector:@selector(user)]) {
        DLog(@"user: %@", self.user);
    }
    if ([self respondsToSelector:@selector(password)]) {
        DLog(@"password: %@", self.password);
    }
    if ([self respondsToSelector:@selector(path)]) {
        DLog(@"path: %@", self.path);
    }
    if ([self respondsToSelector:@selector(fragment)]) {
        DLog(@"fragment: %@", self.fragment);
    }
    if ([self respondsToSelector:@selector(parameterString)]) {
        DLog(@"parameterString: %@", self.parameterString);
    }
    if ([self respondsToSelector:@selector(query)]) {
        DLog(@"query: %@", self.query);
    }
    if ([self respondsToSelector:@selector(relativePath)]) {
        DLog(@"relativePath: %@", self.relativePath);
    }
    
    if ([self respondsToSelector:@selector(hasDirectoryPath)]) {
        DLog(@"hasDirectoryPath: %@", self.hasDirectoryPath ? @"YES" : @"NO");
    }
    if ([self respondsToSelector:@selector(fileSystemRepresentation)]) {
        DLog(@"fileSystemRepresentation: %s", self.fileSystemRepresentation);
    }
    if ([self respondsToSelector:@selector(isFileURL)]) {
        DLog(@"isFileURL: %@", self.isFileURL ? @"YES" : @"NO");
    }
    if ([self respondsToSelector:@selector(standardizedURL)]) {
        DLog(@"standardizedURL: %@", self.standardizedURL);
    }
    if ([self respondsToSelector:@selector(isFileReferenceURL)]) {
        DLog(@"isFileReferenceURL: %@", self.isFileReferenceURL ? @"YES" : @"NO");
    }
    if ([self respondsToSelector:@selector(filePathURL)]) {
        DLog(@"filePathURL: %@", self.filePathURL);
    }
    
    // NSURL (NSURLPathUtilities)
    if ([self respondsToSelector:@selector(pathComponents)]) {
        DLog(@"pathComponents: %@", self.pathComponents);
    }
    if ([self respondsToSelector:@selector(lastPathComponent)]) {
        DLog(@"lastPathComponent: %@", self.lastPathComponent);
    }
    if ([self respondsToSelector:@selector(pathExtension)]) {
        DLog(@"pathExtension: %@", self.pathExtension);
    }
    
    if ([self respondsToSelector:@selector(URLByStandardizingPath)]) {
        DLog(@"URLByStandardizingPath: %@", self.URLByStandardizingPath);
    }
    if ([self respondsToSelector:@selector(URLByResolvingSymlinksInPath)]) {
        DLog(@"URLByResolvingSymlinksInPath: %@", self.URLByResolvingSymlinksInPath);
    }
}

@end
