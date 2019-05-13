//
//  TZBinaryTree.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/12.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "TZBinaryTree.h"

@implementation TZBinaryTree

- (NSArray *)getTreePreList {
    NSMutableArray *preList = [NSMutableArray array];
    [self preHelper:self.root preList:preList];
    return [preList copy];
}

- (void)preHelper:(TreeNode *)node preList:(NSMutableArray *)preList{
    if (node == NULL) {
        return;
    }
    int value = node->value;
    [preList addObject:[NSNumber numberWithInt:value]];
    [self preHelper:node->left preList:preList];
    [self preHelper:node->right preList:preList];
}

- (NSArray *)getTreeVinList {
    NSMutableArray *vinList = [NSMutableArray array];
    [self vinHelper:self.root vinList:vinList];
    return [vinList copy];
}

- (void)vinHelper:(TreeNode *)node vinList:(NSMutableArray *)vinList{
    if (node == NULL) {
        return;
    }
    [self vinHelper:node->left vinList:vinList];
    
    int value = node->value;
    [vinList addObject:[NSNumber numberWithInt:value]];
    
    [self vinHelper:node->right vinList:vinList];
}

@end
