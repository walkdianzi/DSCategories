//
//  UIImage+Compress.h
//  zhefengle
//
//  Created by 橙子 on 16/6/17.
//  Copyright © 2016年 vanwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Compress)

/**
 *  按照宽度来压缩图片
 *
 *  @param defineWidth 宽度
 *
 *  @return 压缩后的图片
 */
- (UIImage *)compressWithDefineWidth:(CGFloat)defineWidth;


/**
 *  微信分享链接,得到小于32k的图片.
 *
 *  @return 压缩后的图片.如果为nil,表示压缩失败.
 */
- (UIImage *)compressUnder32KBImage;


/**
 *  得到小于imageSize kb的图片.
 *
 *  @param imageSize           imageSize
 *
 *  @return return value description
 */
- (UIImage *)compressUnder:(NSInteger)imageSize;

@end
