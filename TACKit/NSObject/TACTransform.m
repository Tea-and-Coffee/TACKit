//
//  TACTransform.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACTransform.h"
#import "TACDebugLog.h"

@implementation TACTransform

#pragma mark
#pragma mark NSMutableDictionary Methods.

/** NSMutableDictionaryの全要素をNSStringへ変換する */
+ (void)changeAllValuesByString:(NSMutableDictionary *)targetDictionary {
    for (NSString *key in targetDictionary.allKeys) {
        
        NSString *objectClassName = NSStringFromClass([targetDictionary[key] class]);
        
        NSString *__NSCFString = @"__NSCFString";
        NSString *__NSCFConstantString = @"__NSCFConstantString";
        NSString *__NSCFNumber = @"__NSCFNumber";
        NSString *NSDecimalNumber = @"NSDecimalNumber";
        NSString *__NSArrayM = @"__NSArrayM";
        NSString *__NSDictionaryM = @"__NSDictionaryM";
        
        if([objectClassName compare:__NSCFString] == NSOrderedSame) {
        } else if ([objectClassName compare:__NSCFConstantString] == NSOrderedSame) {
        } else if([objectClassName compare:__NSCFNumber] == NSOrderedSame) {
            NSString *stringValue = [targetDictionary[key] stringValue];
            targetDictionary[key] = stringValue;
        } else if([objectClassName compare:NSDecimalNumber] == NSOrderedSame) {
            NSString *stringValue = [targetDictionary[key] stringValue];
            targetDictionary[key] = stringValue;
        } else if ([objectClassName compare:__NSArrayM] == NSOrderedSame) {
            NSArray *array = targetDictionary[key];
            for (NSMutableDictionary *newTarget in array) {
                [self changeAllValuesByString:newTarget];
            }
        } else if ([objectClassName compare:__NSDictionaryM] == NSOrderedSame) {
            NSMutableDictionary *newTarget = targetDictionary[key];
            [self changeAllValuesByString:newTarget];
        } else {
            DLog(@"key: %@", key);
        }
    }
}

#pragma mark
#pragma mark Return value is UITableViewCell Methods.

/** 子要素のUIViewから、親のUITableViewCellを返す */
+ (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtSubview:(UIView *)subview {
    CGPoint convertedPoint = [subview convertPoint:CGPointZero toView:tableView];
    NSIndexPath *indexPath = [tableView indexPathForRowAtPoint:convertedPoint];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    return cell;
}

@end
