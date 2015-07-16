//
//  TACAppleMaps.m
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACAppleMaps.h"
#import "TACDebugLog.h"

@implementation TACAppleMaps

/* CLLocationからApple Maps.appを開く */
- (void)open {
    
    // MKPlacemark 生成
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:self.location.coordinate addressDictionary:nil];
    
    // MKPlacemark から MKMapItem 生成
    MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:placemark];
    item.name = self.mapItemName;
    
    // Apple Maps.app に渡すオプションを準備
    // Spanを指定して、Map表示時の拡大率を調整
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(self.location.coordinate, self.latitudinalMeters, self.longitudinalMeters);
    MKCoordinateSpan span = region.span;
    
    // Apple Maps.app を開く
    BOOL result = [item openInMapsWithLaunchOptions:@{ MKLaunchOptionsMapSpanKey : [NSValue valueWithMKCoordinateSpan:span],
                                                       MKLaunchOptionsMapCenterKey : [NSValue valueWithMKCoordinate:self.location.coordinate] }];
    if (!result) {
        ALog(@"%@", @"Apple Maps.appの起動失敗");
    }
}

@end
