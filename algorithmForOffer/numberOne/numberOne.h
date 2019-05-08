//
//  numberOne.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/8.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface numberOne : NSObject


/**
 在一个二维数组中（每个一维数组的长度相同），每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数

 @param maxtrix 输入二维矩阵
 @param number 输入整数
 @return 整数是否存在
 */
+ (BOOL)isExistInMatrix:(NSArray<NSArray *> *)maxtrix number:(NSInteger)number;

@end

NS_ASSUME_NONNULL_END
