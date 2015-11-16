//
//  NSObject+Debug.m
//  MEME-Core-iOS
//
//  Created by 新井雅人 on 2015/11/16.
//  Copyright © 2015年 TriFort,Inc. All rights reserved.
//

#import "NSObject+Debug.h"

@implementation NSObject (Debug)

/// 改行付きでDescriptionを出力する
- (void)dumpDescription {
    NSString *s = self.description;
    s = [s stringByReplacingOccurrencesOfString:@"{" withString:@"{\n "];
    s = [s stringByReplacingOccurrencesOfString:@"; " withString:@";\n "];
    s = [s stringByReplacingOccurrencesOfString:@" }" withString:@"}"];
    NSLog(@"%@", s);
}

@end
