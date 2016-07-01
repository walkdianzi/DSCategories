//
//  NSData+MD5.m
//  iosMD5
//
//  Created by demeng on 11-12-26.
//  Copyright (c) 2011年 HOLDiPhone.com. All rights reserved.
//
 
#import <CommonCrypto/CommonDigest.h>
 
@implementation NSData(MD5)
 
- (NSString*)MD5
{
 	// Create byte array of unsigned chars
  unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];

	// Create 16 byte MD5 hash value, store in buffer
  CC_MD5(self.bytes, self.length, md5Buffer);
    
	// Convert unsigned char buffer to NSString of hex values
  NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
  for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) 
		[output appendFormat:@"%02x",md5Buffer[i]];

  return output;
}
 
@end
