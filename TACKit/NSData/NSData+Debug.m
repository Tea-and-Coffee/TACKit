//
//  NSData+Debug.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "NSData+Debug.h"

@implementation NSData (Debug)

- (void)dumpAtCharacters {
    // dataのポインタを取得
    const unsigned char *ptr = [self bytes];
    unsigned long length = [self length];
    unsigned char s[length];
    
    for (int i = 0; i < length; i++) {
        // 順に文字列を取得する
        s[i] = *ptr++;
    }
    NSLog(@"%s", s);
}

@end
