//
//  NSDate+Additions.m
//  TACKitExample
//
//  Created by Arai on 2016/03/29.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "NSDate+Additions.h"

@implementation NSDate (Additions)

/** NSDateFormatterStyleを変更したNSDateを返す */

+ (NSDate *)dateWithDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    return [[self alloc] dateFromDate:date dateStyle:dateStyle timeStyle:timeStyle];
}

/** NSDateFormatterStyleを変更したNSDateを返す */

- (NSDate *)dateFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateStyle = dateStyle;
    formatter.timeStyle = timeStyle;
    NSString *string = [formatter stringFromDate:date];
    NSDate *newDate = [formatter dateFromString:string];
    return newDate;
}

@end
