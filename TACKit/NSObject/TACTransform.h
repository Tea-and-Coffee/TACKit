//
//  TACTransform.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TACTransform : NSObject

+ (NSDate *)dateFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle;

+ (void)changeAllValuesByString:(NSMutableDictionary *)targetDictionary;

+ (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtSubview:(UIView *)subview;

@end
