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
    DLog(@"dataRepresentation: %@", self.dataRepresentation);
    
    DLog(@"absoluteString: %@", self.absoluteString);
    DLog(@"relativeString: %@", self.relativeString);
    DLog(@"baseURL: %@", self.baseURL);
    DLog(@"absoluteURL: %@", self.absoluteURL);
    
    DLog(@"scheme: %@", self.scheme);
    DLog(@"resourceSpecifier: %@", self.resourceSpecifier);
    
    DLog(@"host: %@", self.host);
    DLog(@"port: %@", self.port);
    DLog(@"user: %@", self.user);
    DLog(@"password: %@", self.password);
    DLog(@"path: %@", self.path);
    DLog(@"fragment: %@", self.fragment);
    DLog(@"parameterString: %@", self.parameterString);
    DLog(@"query: %@", self.query);
    DLog(@"relativePath: %@", self.relativePath);
    
    DLog(@"hasDirectoryPath: %@", self.hasDirectoryPath ? @"YES" : @"NO");
    DLog(@"fileSystemRepresentation: %s", self.fileSystemRepresentation);
    DLog(@"FileURL: %@", self.isFileURL ? @"YES" : @"NO");
    DLog(@"standardizedURL: %@", self.standardizedURL);
    DLog(@"isFileReferenceURL: %@", self.isFileReferenceURL ? @"YES" : @"NO");
    DLog(@"filePathURL: %@", self.filePathURL);
    
    // NSURL (NSURLPathUtilities)
    DLog(@"pathComponents: %@", self.pathComponents);
    DLog(@"lastPathComponent: %@", self.lastPathComponent);
    DLog(@"pathExtension: %@", self.pathExtension);
    
    DLog(@"URLByStandardizingPath: %@", self.URLByStandardizingPath);
    DLog(@"URLByResolvingSymlinksInPath: %@", self.URLByResolvingSymlinksInPath);
}

@end
