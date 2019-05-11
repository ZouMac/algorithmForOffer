//
//  numberThree.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "NumberThree.h"
#import "TZStack.h"

@implementation NumberThree

+ (NSArray *)getListFromTailToHead:(ListNode *)head {
    TZStack *stack = [[TZStack alloc] init];
    while (head) {
        [stack push:@(head->value)];
        head = head->next;
    }
    NSMutableArray *list = [NSMutableArray array];
    
    while (!stack.empty) {
        [list addObject:[stack pop]];
    }
    return [list copy];
}

@end
