//
//  TACGoogleMaps.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACGoogleMaps.h"
#import "UIApplication+Additions.h"

@implementation TACGoogleMaps

/** CLLocationからGoogle Maps.appが開けるかを確認する */
- (BOOL)canOpen {
    NSString *escapedPlaceName = CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                           (CFStringRef)self.placeName,
                                                                                           NULL,
                                                                                           CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                           CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding)));
    
    NSString *urlStr = [NSString stringWithFormat:@"comgooglemaps://?q=%f,%f(%@)", self.location.coordinate.latitude, self.location.coordinate.longitude, escapedPlaceName];
    self.url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        return YES;
    }
    
    return NO;
}

/** Google Maps.appを開く */
- (void)open {
    [[UIApplication sharedApplication] tac_openURL:self.url];
}

@end
