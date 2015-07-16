//
//  TACTransform.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TACTransform : NSObject

+ (NSString *)appendingHttpScheme:(NSString *)target;

+ (NSDate *)dateFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle;

+ (void)changeAllValuesByString:(NSMutableDictionary *)targetDictionary;

+ (UIImage *)imageFromView:(UIView *)view;

+ (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtSubview:(UIView *)subview;


@end
