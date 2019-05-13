//
//  TZStack.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TZStack : NSObject

/**
 栈是否为空
 */
@property (nonatomic, assign) BOOL empty;



/**
 栈顶

 @return 栈顶元素
 */
- (id)top;


/**
 出栈

 @return 出栈元素
 */
- (id)pop;


/**
 入栈

 @param object 入栈元素
 */
- (void)push:(id)object;

@end

NS_ASSUME_NONNULL_END
