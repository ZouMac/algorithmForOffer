//
//  numberThree.h
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "linkedList.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumberThree : NSObject


/**
 输入一个链表，按链表值从尾到头的顺序返回一个ArrayList。

 @param head 链表头
 @return 倒序数组
 */
+ (NSArray *)getListFromTailToHead:(ListNode *) head;

@end

NS_ASSUME_NONNULL_END
