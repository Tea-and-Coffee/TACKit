//
//  NSDate+Additions.h
//  TACKit
//
//  Created by masato_arai on 2016/03/29.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Additions)

+ (NSDate *)dateWithDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle;

- (NSDate *)dateFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle;

@end
