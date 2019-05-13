//
//  NumberFive.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/14.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberFive : NSObject

/**
 
 用两个栈来实现一个队列，完成队列的Push和Pop操作。 队列中的元素为int类型。
 */


/**
 出队列

 @return 出队列元素
 */
- (NSNumber *)pop;


/**
 入队列

 @param node 入队列元素
 */
- (void)push:(NSNumber *)node;

@end

NS_ASSUME_NONNULL_END
