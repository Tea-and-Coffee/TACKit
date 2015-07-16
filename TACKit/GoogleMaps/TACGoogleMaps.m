//
//  TACGoogleMaps.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "TACGoogleMaps.h"

@implementation TACGoogleMaps

/* CLLocationからGoogle Maps.appが開けるかを確認する */
- (BOOL)canOpen {
    NSString *escapedPlaceName = (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                                       (CFStringRef)self.placeName,
                                                                                                       NULL,
                                                                                                       CFSTR(":/?=,!$&'()*+;[]@#"),
                                                                                                       CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    NSString *urlStr = [NSString stringWithFormat:@"comgooglemaps://?q=%f,%f(%@)", self.location.coordinate.latitude, self.location.coordinate.longitude, escapedPlaceName];
    self.url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        return YES;
    }
    
    return NO;
}

/* Google Maps.appを開く */
- (void)open {
    [[UIApplication sharedApplication] openURL:self.url];
}

@end
