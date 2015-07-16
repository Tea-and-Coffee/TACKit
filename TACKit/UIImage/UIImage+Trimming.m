//
//  UIImage+Trimming.m
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
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
