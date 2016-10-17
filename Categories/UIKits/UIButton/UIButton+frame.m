//
//  UIButton+frame.m
//  DSCategories
//
//  Created by dasheng on 16/5/30.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIButton+frame.h"

@implementation UIButton (frame)

-(float)imageLeft{
    return self.imageView.frame.origin.x;
}


-(void)setImageLeft:(float)imageLeft{
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        //相对于初始位置的偏移,AlignmentLeft时image初始位置永远为0,0
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, imageLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, -(self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2+imageLeft, 0, (self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2-imageLeft)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width-imageLeft)];
    }
}

-(float)titleLeft{
    return self.titleLabel.frame.origin.x;
}
-(void)setTitleLeft:(float)titleLeft{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width+titleLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width+titleLeft, 0, (self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2+self.imageView.frame.size.width-titleLeft)];
    
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)-titleLeft)];
    }
}


-(void)setImageToTitleRight{
    
    [self setImageToTitleRightWithPadding:0];
}

-(void)setImageToTitleRightWithPadding:(CGFloat)padding{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, 0)];
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width - padding, 0, self.imageView.frame.size.width)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, -self.titleLabel.frame.size.width)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.frame.size.width + padding)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.frame.size.width)];
    }
}


-(void)setImageAndTitleWithPadding:(CGFloat)padding{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, padding, 0, 0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -padding)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
    }
}


-(void)setImageAndTitleCenterImageTopWithpadding:(float)padding{
    
    if (!padding) {
        padding = 0;
    }
    
    CGFloat imageSizeWidth = self.imageView.frame.size.width;
    [self.titleLabel sizeToFit];
    CGFloat titleSizeWidth = self.titleLabel.frame.size.width;
    CGFloat titleSizeHeight = self.titleLabel.frame.size.height;
    
    //如果文字跟图片的宽度大于button的宽度，则要设置contentEdgeInsets，不然文字会消失不见。因为UIButton内部应该是autolayout的。
    if (imageSizeWidth+titleSizeWidth>self.frame.size.width) {
        CGFloat outWidth = imageSizeWidth+titleSizeWidth - self.frame.size.width;
        self.contentEdgeInsets = UIEdgeInsetsMake(0, -outWidth, 0, -outWidth);
    }
    
    CGFloat topAndBottomMargin = (self.frame.size.height - self.imageView.frame.size.height - titleSizeHeight - padding)/2;
    CGFloat imageLeftInset = self.frame.size.width/2 - (self.imageView.frame.origin.x + self.imageView.frame.size.width/2);
    CGFloat titleLeftInset = self.titleLabel.frame.origin.x + self.titleLabel.frame.size.width/2 - self.frame.size.width/2;

    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
    
        [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, imageLeftInset, self.imageView.frame.origin.y - topAndBottomMargin, 0)];
            
        [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, 0)];
        
    }else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter){
        
    
        [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, imageLeftInset, self.imageView.frame.origin.y - topAndBottomMargin, -imageLeftInset)];
            
        [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, titleLeftInset)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, 0, self.imageView.frame.origin.y - topAndBottomMargin, -imageLeftInset)];
            
        [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, titleLeftInset)];
    }
}

@end
