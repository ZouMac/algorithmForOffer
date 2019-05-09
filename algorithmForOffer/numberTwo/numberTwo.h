//
//  numberTwo.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/9.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface numberTwo : NSObject


/**
 请实现一个函数，将一个字符串中的每个空格替换成“%20”。例如，当字符串为We Are Happy.则经过替换之后的字符串为We%20Are%20Happy。

 @param string 旧字符串
 @param length 字符串长度
 @return 替换之后的字符串
 */
+ (NSString *)replaceSpace:(NSString *)string length:(NSUInteger)length;

@end

NS_ASSUME_NONNULL_END
