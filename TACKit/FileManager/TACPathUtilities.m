//
//  TACPathUtilities.m
//  TACKit
//
//  Created by masato_arai on 2015/04/30.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACPathUtilities.h"
#import "TACDebugLog.h"

static NSString * const _identifier = @"jp.co.teaandcoffee.TACKit.TACFileManager";

@implementation TACPathUtilities

NSString *TACSearchPathForDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde) {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(directory, domainMask, expandTilde);
    return paths[0];
}

NSString *TACCreatePathForDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde) {
    NSString *path = TACSearchPathForDirectoryInDomains(directory, domainMask, expandTilde);
    createDirectoryAtPath(path);
    return path;
}

NSString *TACCreatePathForTACDirectoryInDomains(TACSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde) {
    NSString *path = TACSearchPathForDirectoryInDomains(NSCachesDirectory, domainMask, expandTilde);
    path = [path stringByAppendingPathComponent:_identifier];
    path = [path stringByAppendingPathComponent:searchPathDirectory(directory)];
    createDirectoryAtPath(path);
    return path;
}

BOOL createDirectoryAtPath(NSString *path) {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    if ([fileManager fileExistsAtPath:path]) {
        return YES;
    }
    
    BOOL result = [fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
    if (!result) {
        ALog(@"error %@", error);
    }
    return result;
}

BOOL TACRemoveDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde) {
    NSString *path = TACSearchPathForDirectoryInDomains(directory, domainMask, expandTilde);
    BOOL result = removeItemAtPath(path);
    return result;
}

BOOL TACRemoveTACDirectoryInDomains(TACSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde) {
    NSString *path = TACSearchPathForDirectoryInDomains(NSCachesDirectory, domainMask, expandTilde);
    path = [path stringByAppendingPathComponent:_identifier];
    path = [path stringByAppendingPathComponent:searchPathDirectory(directory)];
    BOOL result = removeItemAtPath(path);
    return result;
}

BOOL removeItemAtPath(NSString *path) {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    if (![fileManager fileExistsAtPath:path]) {
        return YES;
    }
    
    BOOL result = [fileManager removeItemAtPath:path error:&error];
    if (!result) {
        ALog(@"error %@", error);
    }
    return result;
}

BOOL addSkipBackupAttributeWithItemURL(NSURL *URL) {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    assert([fileManager fileExistsAtPath:[URL path]]);
    
    BOOL result = [URL setResourceValue:[NSNumber numberWithBool:YES] forKey:NSURLIsExcludedFromBackupKey error:&error];
    if (!result) {
        ALog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    return result;
}

NSString *searchPathDirectory(TACSearchPathDirectory directory) {
    switch (directory) {
        case TACCachesDirectory: {
            return @"Caches";
        }
        case TACDocumentDirectory: {
            return @"Document";
        }
        case TACDownloadsDirectory: {
            return @"Downloads";
        }
        case TACImagesDirectory: {
            return @"Images";
        }
        case TACJSONDirectory: {
            return @"JSON";
        }
        case TACMoviesDirectory: {
            return @"Movies";
        }
        case TACMusicDirectory: {
            return @"Music";
        }
    }
}

@end
