//
//  NSNull+Additions.h
//  TACKit
//
//  Created by masato_arai on 2015/12/04.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNull (Additions)

+ (BOOL)isNull:(id)obj;
+ (BOOL)notNull:(id)obj;

@end
