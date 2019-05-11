//
//  linkedList.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "linkedList.h"

@interface linkedList()

 @property (nonatomic, assign) ListNode *tmpListNode;

@end

@implementation linkedList

+ (instancetype)createLinkedListWithArray:(NSArray <NSNumber *> *)array {
    return [[self alloc] initWithLinkedListWithArray:array];
}


- (instancetype)init {
    if (self = [super init]) {
//        self.head = NULL;
        self.size = 0;
        self.tmpListNode = NULL;
    }
    return self;
}

- (instancetype)initWithLinkedListWithArray:(NSArray <NSNumber *> *)array {
    if (self = [self init]) {
        for (int i = 0; i < array.count; i++) {
            [self addNode:array[i]];
        }
    }
    return self;
}

- (void)addNode:(NSNumber *)number {
    ListNode *node = malloc(sizeof(ListNode));
    node->value = number.intValue;
    node->next = NULL;
    if (self.head) {
        self.tmpListNode->next = node;
    } else {
        self.head = node;
    }
    self.tmpListNode = node;
    self.size++;
}

- (void)insertNode:(ListNode *)node atListNode:(ListNode *)indexNode {
    ListNode *afterNode = indexNode->next;
    indexNode->next = node;
    node->next = afterNode;
}

- (void)removeNode:(ListNode *)node {
    ListNode *tmpNode = self.head;
    if (node == self.head) {
        self.head = self.head->next;
        return;
    }
    while (tmpNode->next) {
        tmpNode->next = node->next;
        return;
    }
}

@end
