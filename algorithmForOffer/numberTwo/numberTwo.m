//
//  numberTwo.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/9.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "numberTwo.h"

@implementation numberTwo

/**
 获取空格数
 
 @param string 旧字符串
 @param length 字符串长度
 @return 空格数
 */
+ (NSUInteger)getSpaceLength:(NSString *)string length:(NSUInteger)length {
    NSUInteger spaceLen = 0;
    NSUInteger oldLen = length;
    while (oldLen > 0) {
        if ([string characterAtIndex:oldLen - 1] == ' ') {
            spaceLen++;
        }
        oldLen--;
    }
    return spaceLen;
}

/**
 是否是空格
 
 @param string 旧字符串
 @param i 当前位置
 @return isSpace
 */
+ (BOOL)isSpace:(NSString *)string index:(NSUInteger)i {
    return [string characterAtIndex:i] == ' ';
}

+ (NSString *)replaceSpace:(NSString *)string length:(NSUInteger)length {
    
    NSUInteger spaceLen = [self getSpaceLength:string length:length];
//    获取新字符串长度
    NSUInteger newLen = length + 2 * spaceLen;
    
//    初始化新字符串
    NSMutableString *newString = [NSMutableString stringWithCapacity:newLen];
    
    NSUInteger i = 0;
    NSUInteger j = 0;
    while (i < length && j < newLen) { // NSMutableString无法往后插入
        if ([self isSpace:string index:i]) { // 空格插入 %2d
            [newString insertString:@"%" atIndex:j++];
            [newString insertString:@"2" atIndex:j++];
            [newString insertString:@"d" atIndex:j++];
            i++;
        } else { // 非空格插入旧字符
            [newString insertString:[string substringWithRange:NSMakeRange(i++, 1)] atIndex:j++];
        }
    }
    return [newString copy];
    
}

@end
