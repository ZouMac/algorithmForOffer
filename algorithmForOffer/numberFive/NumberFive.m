//
//  NumberFive.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/14.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "NumberFive.h"
#import "TZStack.h"

@interface NumberFive()

/**
 保存入队的元素
 */
@property (nonatomic, strong) TZStack *pushStack;


/**
 保存出队的元素
 */
@property (nonatomic, strong) TZStack *popStack2;

@end

@implementation NumberFive

- (NSNumber *)pop {
//    用于pop的栈为空时，倒序插入pushStack
    if (self.popStack2.empty) {
        while (!self.pushStack.empty) {
            [self.popStack2 push:[self.pushStack pop]];
        }
    }
//    出队列
    return [self.popStack2 pop];
}

- (void)push:(NSNumber *)node {
    [self.pushStack push:node];
}

- (TZStack *)pushStack {
    if (!_pushStack) {
        _pushStack = [[TZStack alloc] init];
    }
    return _pushStack;
}

- (TZStack *)popStack2 {
    if (!_popStack2) {
        _popStack2 = [[TZStack alloc] init];
    }
    return _popStack2;
}

@end
