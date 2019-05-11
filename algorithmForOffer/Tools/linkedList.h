//
//  linkedList.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/**
 节点结构体
 */
typedef struct listNode {
    int value; // 值
    struct listNode *next; // next指针
} ListNode;

@interface linkedList : NSObject


/**
 表头
 */
@property (nonatomic, assign) ListNode *head;


/**
 表长度
 */
@property (nonatomic, assign) NSUInteger size;


/**
 使用一个数组创建一个单向链表

 @param array 数组
 @return 单向链表
 */
+ (instancetype)createLinkedListWithArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
