//
//  NSData+Debug.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
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
    DLog(@"%s", s);
}

@end
