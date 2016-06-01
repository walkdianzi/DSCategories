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
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -(self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2+imageLeft, 0, (self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2-imageLeft)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width-imageLeft)];
        });
    }
}

-(float)titleLeft{
    return self.titleLabel.frame.origin.x;
}
-(void)setTitleLeft:(float)titleLeft{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width+titleLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width+titleLeft, 0, (self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2+self.imageView.frame.size.width-titleLeft)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)-titleLeft)];
        });
    }
    
}


-(float)titleCenter{
    
    return self.frame.size.width/2;
}
-(void)setTitleCenter{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        //相对于初始位置的偏移,AlignmentLeft时title初始位置永远为image的右边位置(当title改变时马上执行此方法，titlelabel的frame还没修改，所以要延时处理)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width, 0, 0)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (self.imageView.frame.size.width)/2-self.imageView.frame.size.width, 0, -(self.imageView.frame.size.width)/2+self.imageView.frame.size.width)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -(self.frame.size.width-self.titleLabel.frame.size.width)/2+self.frame.size.width-self.titleLabel.frame.size.width)];
        });
    }
    
}


-(void)setimageToTitleRight{
    
    [self setimageToTitleRightWithPadding:0];
}

-(void)setimageToTitleRightWithPadding:(CGFloat)padding{
    
    [self setimageToTitleRightWithPadding:padding isDelay:YES];
}

-(void)setimageToTitleRightWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay{
    
    if (isDelay) {
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0)];
            });
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width - padding, 0, self.imageView.frame.size.width + padding)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, -self.titleLabel.frame.size.width - padding)];
            });
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.imageView.frame.size.width)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.frame.size.width)];
            });
        }
    }else{
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0)];
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width - padding, 0, self.imageView.frame.size.width + padding)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, -self.titleLabel.frame.size.width - padding)];
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.imageView.frame.size.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.frame.size.width)];
        }
    }
}

-(void)setImageAndTitleWithPadding:(CGFloat)padding{
    
    [self setImageAndTitleWithPadding:padding isDelay:YES];
}

-(void)setImageAndTitleWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay{
    
    if (isDelay) {
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
            });
        }
    }else{
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
}

-(void)setImageAndTitleCenterImageTopWithpadding:(float)padding{
    
    if (!padding) {
        padding = 0;
    }
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.size.height-padding, (self.frame.size.width-self.imageView.frame.size.width)/2, 0, 0)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.titleLabel.frame.size.height+padding, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width, 0, 0)];
        });
        
    }else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.size.height-padding, self.titleLabel.frame.size.width/2, 0, -self.titleLabel.frame.size.width/2)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.titleLabel.frame.size.height+padding, -self.imageView.frame.size.width/2-15, 0, self.imageView.frame.size.width/2-15)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.size.height-padding, 0, 0, (self.frame.size.width-self.imageView.frame.size.width)/2-self.titleLabel.frame.size.width)];
            
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.titleLabel.frame.size.height+padding, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)/2)];
        });
    }
}

-(void)setImageAndTitleCenterTitleTopWithpadding:(float)padding{
    
    
    if (!padding) {
        padding = 0;
    }
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, (self.frame.size.width-self.imageView.frame.size.width)/2, 0, 0)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width, 0, 0)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, self.titleLabel.frame.size.width/2, 0, -self.titleLabel.frame.size.width/2)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, -self.imageView.frame.size.width/2, 0, self.imageView.frame.size.width/2)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, 0, 0, (self.frame.size.width-self.imageView.frame.size.width)/2-self.titleLabel.frame.size.width)];
            
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)/2)];
        });
    }
}

@end
