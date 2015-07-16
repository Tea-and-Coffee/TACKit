//
//  TACGoogleMaps.h
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TACGoogleMaps : NSObject

@property (nonatomic) NSURL *url;
@property (nonatomic) CLLocation *location;
@property (nonatomic) NSString *placeName;

- (BOOL)canOpen;
- (void)open;

@end
