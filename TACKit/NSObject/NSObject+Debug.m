//
//  NSObject+Debug.m
//  MEME-Core-iOS
//
//  Created by masato_arai on 2015/11/16.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSObject+Debug.h"
#import "TACDebugLog.h"
#import "NSObject+Common.h"

@implementation NSObject (Debug)

/** 改行付きでDescriptionを出力する */
- (void)dumpDescription {
    NSString *s = self.description;
    s = [s stringByReplacingOccurrencesOfString:@"{" withString:@"{\n "];
    s = [s stringByReplacingOccurrencesOfString:@"; " withString:@";\n "];
    s = [s stringByReplacingOccurrencesOfString:@" }" withString:@"}"];
    DLog(@"%@", s);
}

/** プロパティーの型と名を出力する */
- (void)dumpProperties {
    NSDictionary *properties = [self properties];
    [properties enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull name, NSString * _Nonnull type, BOOL * _Nonnull stop) {
        id value = [self valueForKey:name];
        DLog(@"%@(%@): %@", name, type, value);
    }];
}

@end
