//
//  TACPathUtilities.h
//  TACKit
//
//  Created by masato_arai on 2015/04/30.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

/// Applications/<GUID>/Library/Caches/<identifier>/<Directory>
typedef NS_ENUM(NSUInteger, TACSearchPathDirectory) {
    TACCachesDirectory = 0,
    TACDocumentDirectory,
    TACDownloadsDirectory,
    TACImagesDirectory,
    TACJSONDirectory,
    TACMoviesDirectory,
    TACMusicDirectory
};

@interface TACPathUtilities : NSObject

FOUNDATION_EXPORT NSString *TACSearchPathForDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde);
FOUNDATION_EXPORT NSString *TACCreatePathForDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde);
FOUNDATION_EXPORT NSString *TACCreatePathForTACDirectoryInDomains(TACSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde);
FOUNDATION_EXPORT BOOL TACRemoveDirectoryInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde);
FOUNDATION_EXPORT BOOL TACRemoveTACDirectoryInDomains(TACSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde);

BOOL createDirectoryAtPath(NSString *path);
BOOL removeItemAtPath(NSString *path);
BOOL addSkipBackupAttributeWithItemPath(NSString *path);

BOOL createDirectoryAtURL(NSURL *URL);
BOOL removeItemAtURL(NSURL *URL);
BOOL addSkipBackupAttributeWithItemURL(NSURL *URL);

@end

/**
 * [How To Use]
 *
 * TACSearchPathForDirectoryInDomains
 * NSString *path = TACSearchPathForDirectoryInDomains(NSCachesDirectory, NSUserDomainMask, YES);
 *
 * TACCreatePathForDirectoryInDomains
 * NSString *path = TACCreatePathForDirectoryInDomains(NSCachesDirectory, NSUserDomainMask, YES);
 *
 * TACCreatePathForTACDirectoryInDomains
 * NSString *path = TACCreatePathForTACDirectoryInDomains(TACImagesDirectory, NSUserDomainMask, YES);
 *
 * TACRemoveDirectoryInDomains
 * BOOL result = TACRemoveDirectoryInDomains(NSCachesDirectory, NSUserDomainMask, YES);
 *
 * TACRemoveTACDirectoryInDomains
 * BOOL result = TACRemoveTACDirectoryInDomains(TACImagesDirectory, NSUserDomainMask, YES);
 */
