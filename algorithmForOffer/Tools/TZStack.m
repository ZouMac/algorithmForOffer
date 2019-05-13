//
//  TZStack.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "TZStack.h"

@interface TZStack()

@property (nonatomic, strong) NSMutableArray *stack;

@end

@implementation TZStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.empty = YES;
    }
    return self;
}

- (id)top {
    return [self.stack firstObject];
}

- (id)pop {
    if (!self.stack.count) {
        return nil;
    }
    id lastObject = [self.stack lastObject];
    [self.stack removeLastObject];
    self.empty = !self.stack.count;
    return lastObject;
}

- (void)push:(id)object {
    NSParameterAssert(object);
    self.empty = NO;
    [self.stack addObject:object];
}

- (NSMutableArray *)stack {
    if (!_stack) {
        _stack = [NSMutableArray array];
    }
    return _stack;
}

@end
