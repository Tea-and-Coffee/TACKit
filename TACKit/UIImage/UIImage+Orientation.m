//
//  UIImage+Orientation.m
//  TACKit
//
//  Created by masato_arai on 2017/04/26.
//  Copyright (c) 2017年 Tea and Coffee. All rights reserved.
//

#import "UIImage+Orientation.h"

@implementation UIImage (Orientation)

- (NSInteger)angle {
    NSInteger angle = NSIntegerMin;
    
    switch (self.imageOrientation) {
        case UIImageOrientationUp: {
            angle = 0;
            break;
        }
        case UIImageOrientationDown: {
            angle = 180;
            break;
        }
        case UIImageOrientationLeft: {
            angle = 90;
            break;
        }
        case UIImageOrientationRight: {
            angle = 270;
            break;
        }
        case UIImageOrientationUpMirrored: {
            angle = NSIntegerMin;
            break;
        }
        case UIImageOrientationDownMirrored: {
            angle = NSIntegerMin;
            break;
        }
        case UIImageOrientationLeftMirrored: {
            angle = NSIntegerMin;
            break;
        }
        case UIImageOrientationRightMirrored: {
            angle = NSIntegerMin;
            break;
        }
    }
    
    return angle;
}

- (nullable UIImage *)rotateUpImage {
    NSInteger angle = self.angle;
    if (angle == NSIntegerMin) {
        return nil;
    }
    
    angle += 0;
    UIImage *rotateImage = [self rotateImageWithAngle:angle];
    return rotateImage;
}

- (nullable UIImage *)rotateDownImage {
    NSInteger angle = self.angle;
    if (angle == NSIntegerMin) {
        return nil;
    }
    
    angle += 180;
    UIImage *rotateImage = [self rotateImageWithAngle:angle];
    return rotateImage;
}

- (nullable UIImage *)rotateLeftImage {
    NSInteger angle = self.angle;
    if (angle == NSIntegerMin) {
        return nil;
    }
    
    angle += 90;
    UIImage *rotateImage = [self rotateImageWithAngle:angle];
    return rotateImage;
}

- (nullable UIImage *)rotateRightImage {
    NSInteger angle = self.angle;
    if (angle == NSIntegerMin) {
        return nil;
    }
    
    angle += 270;
    UIImage *rotateImage = [self rotateImageWithAngle:angle];
    return rotateImage;
}

- (nullable UIImage *)rotateImageWithAngle:(NSInteger)angle {
    UIGraphicsBeginImageContext(self.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, self.size.width / 2, self.size.height / 2);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    float radian = angle * M_PI / 180;
    CGContextRotateCTM(context, radian);
    CGContextDrawImage(UIGraphicsGetCurrentContext(), CGRectMake(-self.size.width / 2, -self.size.height / 2, self.size.width, self.size.height), self.CGImage);
    
    UIImage *rotateImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return rotateImage;
}

@end
