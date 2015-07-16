//
//  TACPathUtilities.h
//  MobileMessenger
//
//  Created by companion_ios on 20150430.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
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

void createDirectoryAtPath(NSString *path);

@end

/*
 [Usage]
 TACSearchPathForDirectoryInDomains
 NSString *path = TACSearchPathForDirectoryInDomains(NSCachesDirectory, NSUserDomainMask, YES);
 
 TACCreatePathForDirectoryInDomains
 NSString *path = TACCreatePathForDirectoryInDomains(NSCachesDirectory, NSUserDomainMask, YES);
 
 TACCreatePathForTACDirectoryInDomains
 NSString *path = TACCreatePathForTACDirectoryInDomains(TACImagesDirectory, NSUserDomainMask, YES);
 */