//
//  NSDictionary+SafeAccess.h
//  iOS-Categories (https://github.com/shaojiankui/iOS-Categories)
//
//  Created by Jakey on 15/1/25.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (SafeAccess)
- (BOOL)hasKey:(NSString *)key;

- (NSString*)ds_stringForKey:(id)key;

- (NSNumber*)ds_numberForKey:(id)key;

- (NSDecimalNumber *)ds_decimalNumberForKey:(id)key;

- (NSArray*)ds_arrayForKey:(id)key;

- (NSDictionary*)ds_dictionaryForKey:(id)key;

- (NSInteger)ds_integerForKey:(id)key;

- (NSUInteger)ds_unsignedIntegerForKey:(id)key;

- (BOOL)ds_boolForKey:(id)key;

- (int16_t)ds_int16ForKey:(id)key;

- (int32_t)ds_int32ForKey:(id)key;

- (int64_t)ds_int64ForKey:(id)key;

- (char)ds_charForKey:(id)key;

- (short)ds_shortForKey:(id)key;

- (float)ds_floatForKey:(id)key;

- (double)ds_doubleForKey:(id)key;

- (long long)ds_longLongForKey:(id)key;

- (unsigned long long)ds_unsignedLongLongForKey:(id)key;

- (NSDate *)dateForKey:(id)key dateFormat:(NSString *)dateFormat;

//CG
- (CGFloat)CGFloatForKey:(id)key;

- (CGPoint)pointForKey:(id)key;

- (CGSize)sizeForKey:(id)key;

- (CGRect)rectForKey:(id)key;
@end

#pragma --mark NSMutableDictionary setter

@interface NSMutableDictionary(SafeAccess)

-(void)setObj:(id)i forKey:(NSString*)key;

-(void)setString:(NSString*)i forKey:(NSString*)key;

-(void)setBool:(BOOL)i forKey:(NSString*)key;

-(void)setInt:(int)i forKey:(NSString*)key;

-(void)setInteger:(NSInteger)i forKey:(NSString*)key;

-(void)setUnsignedInteger:(NSUInteger)i forKey:(NSString*)key;

-(void)setCGFloat:(CGFloat)f forKey:(NSString*)key;

-(void)setChar:(char)c forKey:(NSString*)key;

-(void)setFloat:(float)i forKey:(NSString*)key;

-(void)setDouble:(double)i forKey:(NSString*)key;

-(void)setLongLong:(long long)i forKey:(NSString*)key;

-(void)setPoint:(CGPoint)o forKey:(NSString*)key;

-(void)setSize:(CGSize)o forKey:(NSString*)key;

-(void)setRect:(CGRect)o forKey:(NSString*)key;
@end