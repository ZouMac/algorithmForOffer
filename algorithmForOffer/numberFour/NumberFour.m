//
//  NumberFour.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/12.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "NumberFour.h"
#import "TZBinaryTree.h"

@implementation NumberFour

+ (TreeNode *)reConstructBinaryTree:(NSArray <NSNumber *>*)pre vin:(NSArray <NSNumber *>*)vin {
    
    if (pre.count == 0 || vin.count == 0) { // 长度为0，为空节点
        return NULL;
    }
    
    TreeNode *root = malloc(sizeof(TreeNode));
    
    int rootVal = [pre firstObject].intValue;
    root->value = rootVal;
    
//    获取middle节点
    int leftVinIndex = 0;
    for (int i = 0; i < vin.count; i++) {
        leftVinIndex++;
        if (vin[i].intValue == rootVal) {
            break;
        }
    }
    
    NSArray <NSNumber *> *subPreLeft = [pre subarrayWithRange:NSMakeRange(1, leftVinIndex - 1)];
    NSArray <NSNumber *> *subVinLeft = [vin subarrayWithRange:NSMakeRange(0, leftVinIndex - 1)];
    
    
    NSArray <NSNumber *> *subPreRight = [pre subarrayWithRange:NSMakeRange(leftVinIndex, pre.count - leftVinIndex)];
    
    NSArray <NSNumber *> *subVinRight = [vin subarrayWithRange:NSMakeRange(leftVinIndex, vin.count - leftVinIndex)];
    
//    递归左右子书
    root->left = [self reConstructBinaryTree:subPreLeft vin:subVinLeft];
    root->right = [self reConstructBinaryTree:subPreRight vin:subVinRight];
    
    return root;
}

@end
