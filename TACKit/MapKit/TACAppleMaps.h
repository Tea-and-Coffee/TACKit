//
//  TACAppleMaps.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACAppleMaps : NSObject

@property (nonatomic) CLLocation *location;
@property (nonatomic) NSString *mapItemName;
@property (nonatomic) CLLocationDistance latitudinalMeters;
@property (nonatomic) CLLocationDistance longitudinalMeters;

- (void)open;

@end
