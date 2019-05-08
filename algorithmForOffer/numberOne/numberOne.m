//
//  numberOne.m
//  algorithmForOffer
//
//  Created by Zou Tan on 2019/5/8.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import "numberOne.h"

@implementation numberOne

+ (BOOL)isExistInMatrix:(NSArray<NSArray <NSNumber *> *> *)maxtrix number:(NSInteger)number {
    if ([maxtrix.className isEqualToString:@"NSNull"] || !maxtrix.count || maxtrix == nil) { //鲁棒性
        return NO;
    }
    if ([[maxtrix firstObject] firstObject].integerValue > number || [[maxtrix lastObject] lastObject].integerValue < number) {
        return NO;
    }
    for (int i = 0; i < maxtrix.count; i++) {
        NSArray <NSNumber *>*array = maxtrix[i];
        for (NSInteger j = array.count - 1; j >= 0; j--) {
            if (array[j].integerValue < number) {
                break;
            } else if (array[j].integerValue == number) {
                return YES;
            } else if (j == 0 && array[j].integerValue > number) {
                return NO;
            }
        }
    }
    
    return NO;
}

@end
