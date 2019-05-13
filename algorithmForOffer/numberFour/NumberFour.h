//
//  NumberFour.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/12.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TZBinaryTree.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumberFour : NSObject


/**
 
 输入某二叉树的前序遍历和中序遍历的结果，请重建出该二叉树。假设输入的前序遍历和中序遍历的结果中都不含重复的数字。例如输入前序遍历序列{1,2,4,7,3,5,6,8}和中序遍历序列{4,7,2,1,5,3,8,6}，则重建二叉树并返回。

 @param pre x前序遍历
 @param vin 中序遍历
 @return 二叉树root
 */
+ (TreeNode *)reConstructBinaryTree:(NSArray <NSNumber *>*)pre vin:(NSArray <NSNumber *>*)vin;

@end

NS_ASSUME_NONNULL_END
