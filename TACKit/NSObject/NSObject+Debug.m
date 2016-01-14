//
//  NSObject+Debug.m
//  MEME-Core-iOS
//
//  Created by masato_arai on 2015/11/16.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "NSObject+Debug.h"

@implementation NSObject (Debug)

/** 改行付きでDescriptionを出力する */
- (void)dumpDescription {
    NSString *s = self.description;
    s = [s stringByReplacingOccurrencesOfString:@"{" withString:@"{\n "];
    s = [s stringByReplacingOccurrencesOfString:@"; " withString:@";\n "];
    s = [s stringByReplacingOccurrencesOfString:@" }" withString:@"}"];
    NSLog(@"%@", s);
}

@end
