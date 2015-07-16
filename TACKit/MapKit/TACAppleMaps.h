//
//  TACAppleMaps.h
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface TACAppleMaps : NSObject

@property (nonatomic) CLLocation *location;
@property (nonatomic) NSString *mapItemName;
@property (nonatomic) CLLocationDistance latitudinalMeters;
@property (nonatomic) CLLocationDistance longitudinalMeters;

- (void)open;

@end
