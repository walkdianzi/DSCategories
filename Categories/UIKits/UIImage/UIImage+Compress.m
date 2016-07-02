//
//  UIImage+Compress.m
//  zhefengle
//
//  Created by 橙子 on 16/6/17.
//  Copyright © 2016年 vanwell. All rights reserved.
//

#import "UIImage+Compress.h"

@implementation UIImage (Compress)

- (UIImage *)compressWithDefineWidth:(CGFloat)defineWidth {
    UIImage *newImage = nil;
    CGSize imageSize = self.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = defineWidth;
    CGFloat targetHeight = height / (width / targetWidth);
    CGSize size = CGSizeMake(targetWidth, targetHeight);
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);
    if(CGSizeEqualToSize(imageSize, size) == NO){
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if(widthFactor > heightFactor){
            scaleFactor = widthFactor;
        }
        else{
            scaleFactor = heightFactor;
        }
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        if(widthFactor > heightFactor){
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }else if(widthFactor < heightFactor){
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    UIGraphicsBeginImageContext(size);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight+1;
    
    [self drawInRect:thumbnailRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil){
        debugLog(@"scale image fail");
    }
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)compressUnder32KBImage{
    
    UIImage *tempImage = self;
    CGFloat compressPoint = 1.0f;
    NSData *imageData = UIImageJPEGRepresentation(self, compressPoint);
    NSInteger i = 0;
    while (imageData.length/1024 >= 32) {
        imageData = nil;
        tempImage = nil;
        compressPoint -= 0.1f;
        if (compressPoint < 0) {
            compressPoint = 0.5f;
        }
        imageData = UIImageJPEGRepresentation(self, compressPoint);
        tempImage = [[UIImage alloc]initWithData:imageData];
        if (compressPoint == 0) {
            break;
        }
        i++;
        if (i == 5) {
            break;
        }
    }
    if (imageData.length/1024 >= 32) {
        return nil;
    }
    return tempImage;
}

- (UIImage *)compressUnder:(NSInteger)imageSize{
    
    UIImage *tempImage = self;
    CGFloat compressPoint = 1.0f;
    NSData *imageData = UIImageJPEGRepresentation(self, compressPoint);
    while (imageData.length/1024 >= imageSize) {
        imageData = nil;
        tempImage = nil;
        compressPoint -= 0.1f;
        imageData = UIImageJPEGRepresentation(self, compressPoint);
        //debugLog(@"%lu",imageData.length/1024);
        tempImage = [[UIImage alloc]initWithData:imageData];
        if (compressPoint == 0) {
            break;
        }
    }
    if (imageData.length/1024 >= imageSize) {
        return nil;
    }
    return tempImage;
}

@end
