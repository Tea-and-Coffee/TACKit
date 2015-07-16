//
//  UIImage+Trimming.m
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import "UIImage+Trimming.h"

@implementation UIImage (Trimming)

/* UIImageを指定したCGRectでトリミングする */
- (UIImage *)trimmingOfRect:(CGRect)rect {
    CGPoint originDrawPoint = CGPointMake(rect.origin.x * -1, rect.origin.y * -1);
    
    UIGraphicsBeginImageContext(rect.size);
    [self drawAtPoint:originDrawPoint];
    UIImage* partialImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return partialImage;
}

@end
