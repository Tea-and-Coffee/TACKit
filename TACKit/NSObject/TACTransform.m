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

#ifdef DEBUG
static NSString * const httpScheme = @"http";
#else
static NSString * const httpScheme = @"https";
#endif

#pragma mark
#pragma mark Return value is NSString Methods.
/// NSStringに、httpSchemeを付与して返す
+ (NSString *)appendingHttpScheme:(NSString *)target {
    if (!target) {
        return target;
    }
    if ([target length] == 0) {
        return target;
    }
    
    BOOL hasPrefix_1 = [target hasPrefix:@"http://"];
    if (hasPrefix_1) {
        return target;
    }
    
    BOOL hasPrefix_2 = [target hasPrefix:@"https://"];
    if (hasPrefix_2) {
        return target;
    }
    
    BOOL hasPrefix_3 = [target hasPrefix:@"//"];
    if (hasPrefix_3) {
        NSString *editedTarget = [NSString stringWithFormat:@"%@%@%@", httpScheme, @":", target];
        return editedTarget;
    }
    
    return target;
}

#pragma mark
#pragma mark Return value is NSDate Methods.
/// NSDateFormatterStyleを変更したNSDateを返す
+ (NSDate *)dateFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:dstyle];
    [formatter setTimeStyle:tstyle];
    NSString *str = [formatter stringFromDate:date];
    NSDate *styledData = [formatter dateFromString:str];
    
    return styledData;
}

#pragma mark
#pragma mark NSMutableDictionary Methods.
/// NSMutableDictionaryの全要素をNSStringへ変換する
+ (void)changeAllValuesByString:(NSMutableDictionary *)targetDictionary {
    for (NSString *key in targetDictionary.allKeys) {
        
        NSString *objectClassName = NSStringFromClass([[targetDictionary objectForKey:key] class]);
        
        NSString *__NSCFString = @"__NSCFString";
        NSString *__NSCFConstantString = @"__NSCFConstantString";
        NSString *__NSCFNumber = @"__NSCFNumber";
        NSString *NSDecimalNumber = @"NSDecimalNumber";
        NSString *__NSArrayM = @"__NSArrayM";
        NSString *__NSDictionaryM = @"__NSDictionaryM";
        
        if([objectClassName compare:__NSCFString] == NSOrderedSame) {
        } else if ([objectClassName compare:__NSCFConstantString] == NSOrderedSame) {
        } else if([objectClassName compare:__NSCFNumber] == NSOrderedSame) {
            NSString *stringValue = [[targetDictionary objectForKey:key] stringValue];
            [targetDictionary setObject:stringValue forKey:key];
        } else if([objectClassName compare:NSDecimalNumber] == NSOrderedSame) {
            NSString *stringValue = [[targetDictionary objectForKey:key] stringValue];
            [targetDictionary setObject:stringValue forKey:key];
        } else if ([objectClassName compare:__NSArrayM] == NSOrderedSame) {
            NSArray *array = [targetDictionary objectForKey:key];
            for (NSMutableDictionary *newTarget in array) {
                [self changeAllValuesByString:newTarget];
            }
        } else if ([objectClassName compare:__NSDictionaryM] == NSOrderedSame) {
            NSMutableDictionary *newTarget = [targetDictionary objectForKey:key];
            [self changeAllValuesByString:newTarget];
        } else {
            DLog(@"key: %@", key);
        }
    }
}

#pragma mark
#pragma mark Return value is UIImage Methods.
/// UIViewをUIImageに変換する
+ (UIImage *)imageFromView:(UIView *)view {
    // UIView サイズの画像コンテキストを確保
    UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, 0);
    
    // 開始した画像コンテキストを取得
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 画像化する部分の位置調整
    CGContextTranslateCTM(context, -view.frame.origin.x, -view.frame.origin.y);
    
    // 画像出力
    [view.layer renderInContext:context];
    
    // UIImage化
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    
    // コンテキスト破棄
    UIGraphicsEndImageContext();
    
    return image;
}

#pragma mark
#pragma mark Return value is UITableViewCell Methods.
/// 子要素のUIViewから、親のUITableViewCellを返す
+ (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtSubview:(UIView *)subview {
    CGPoint convertedPoint = [subview convertPoint:CGPointZero toView:tableView];
    NSIndexPath *indexPath = [tableView indexPathForRowAtPoint:convertedPoint];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    return cell;
}

@end
