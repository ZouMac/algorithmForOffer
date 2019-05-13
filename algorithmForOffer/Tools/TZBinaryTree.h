//
//  TZBinaryTree.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/12.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct treeNode {
    int value;
    struct treeNode *left;
    struct treeNode *right;
} TreeNode;

@interface TZBinaryTree : NSObject

@property (nonatomic, assign) TreeNode *root;

- (NSArray *)getTreePreList;

- (NSArray *)getTreeVinList;

@end

NS_ASSUME_NONNULL_END
