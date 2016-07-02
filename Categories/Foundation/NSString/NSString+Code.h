//
//  NSString+Code.h
//  zhefengle
//
//  Created by dasheng on 16/7/2.
//  Copyright © 2016年 vanwell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Code)

//URLEncode
/**
 *  URLEncode
 *
 *  @param unencodedString
 *
 *  @return
 */
- (NSString *)encodeString;

//URLDEcode
- (NSString *)decodeString;

@end
