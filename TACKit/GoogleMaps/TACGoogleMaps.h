//
//  TACGoogleMaps.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface TACGoogleMaps : NSObject

@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) CLLocation *location;
@property (nonatomic, strong) NSString *placeName;

@property (nonatomic, assign, readonly) BOOL canOpen;
- (void)open;

@end
