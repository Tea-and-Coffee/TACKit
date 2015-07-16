//
//  TACGoogleMaps.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface TACGoogleMaps : NSObject

@property (nonatomic) NSURL *url;
@property (nonatomic) CLLocation *location;
@property (nonatomic) NSString *placeName;

- (BOOL)canOpen;
- (void)open;

@end
