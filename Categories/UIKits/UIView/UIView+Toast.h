/***************************************************************************
 
UIView+Toast.h
Toast

Copyright (c) 2013 Charles Scalesse.
 
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:
 
The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
***************************************************************************/


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Toast)

// each makeToast method creates a view and displays it as toast
- (void)makeToast:(NSString *)message;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position image:(UIImage *)image;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position title:(NSString *)title;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position title:(NSString *)title image:(UIImage *)image;
- (void)hideToast:(UIView *)toast;


// displays toast with an activity spinner
- (void)makeToastActivity;
- (void)makeToastActivity:(id)position;
- (void)hideToastActivity;

/**
 *  显示自定义动画的加载
 */
- (void)makeToastAnimationImage;
- (void)hideToastAnimationImage;

/**
 *  显示自定义动画的加载
 *
 *  @param size      动画图片大小
 *  @param isdismiss 如果不调用隐藏，时间到后是否自动消失
 */
- (void)makeToastAnimationImageWithSize:(CGSize)size isdismiss:(BOOL)isdismiss;

/**
 *  显示自定义动画的加载
 *
 *  @param size       动画图片大小
 *  @param imageArray 自定义动画的图片数组,可以是图片名数组，也可以UIImage数组
 *  @param isdismiss  如果不调用隐藏，时间到后是否自动消失
 */
- (void)makeToastAnimationImageWithSize:(CGSize)size withImageArray:(NSArray *)imageArray isdismiss:(BOOL)isdismiss;


// the showToast methods display any view as toast
- (void)showToast:(UIView *)toast;
- (void)showToast:(UIView *)toast duration:(NSTimeInterval)interval position:(id)point;

@end
