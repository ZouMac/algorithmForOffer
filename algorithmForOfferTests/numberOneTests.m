//
//  numberOneTests.m
//  algorithmForOfferTests
//
//  Created by Zou Tan on 2019/5/8.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "numberOne.h"

@interface numberOneTests : XCTestCase
@property (nonatomic, copy) NSArray *testCase;

//@property (nonatomic, copy) NSArray *maxtrix;
//@property (nonatomic, assign) NSInteger number;
@end

@implementation numberOneTests

- (NSArray *)getRandomMaxtrix {
    NSMutableArray *maxtrixM = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i < 10; i++) {
        NSMutableArray <NSNumber *> *array = [NSMutableArray arrayWithCapacity:10];
        for (int j = 0; j < 10; j++) {
            if (array.count == 0) {
                NSNumber *lastNumber = [maxtrixM lastObject] ? [[maxtrixM lastObject] lastObject] : @(0);
                [array addObject:@(arc4random() % 100 + 2 + lastNumber.integerValue)];//后一位比前一位至少大2，为+1测试用例创造条件
            } else {
                [array addObject:@([array lastObject].integerValue + 2 + arc4random() % 100)];
            }
        }
        [maxtrixM addObject:array];
    }
    return [maxtrixM copy];
}

- (NSArray *)getTestCase {
    NSArray *maxtrix = [self getRandomMaxtrix];
    NSMutableArray *testCase = [NSMutableArray array];
    [testCase addObject:@{ // 存在的情况
                          @"number": @(((NSNumber *)maxtrix[arc4random() % 10][arc4random() % 10]).integerValue),
                          @"maxtrix": maxtrix,
                          @"result": @(YES)
                          }];
    
    [testCase addObject:@{ // 越界 小于最小的数
                          @"number": @(((NSNumber *)maxtrix[0][0]).integerValue - 1),
                          @"maxtrix": maxtrix,
                          @"result": @(NO)
                          }];
    [testCase addObject:@{ // 越界 大于最大的数
                          @"number": @(((NSNumber *)maxtrix[9][9]).integerValue + 10),
                          @"maxtrix": maxtrix,
                          @"result": @(NO)
                          }];
    [testCase addObject:@{ // 二维数组内部b 不存在的情况
                          @"number": @(((NSNumber *)maxtrix[3][8]).integerValue + 1),
                          @"maxtrix": maxtrix,
                          @"result": @(NO)
                          }];
    
    [testCase addObject:@{ // 二维数组为空的情况
                          @"number": @(arc4random() % 10000),
                          @"maxtrix": @[],
                          @"result": @(NO)
                          }];
    [testCase addObject:@{ // 二维数组为空对象的情况
                          @"number": @(arc4random() % 10000),
                          @"maxtrix": [NSNull null],
                          @"result": @(NO)
                          }];
    return [testCase copy];
}

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.testCase = [self getTestCase];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.testCase = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    for (int i = 0; i < self.testCase.count; i++) {
        NSNumber *number = self.testCase[i][@"number"];
        NSNumber *result = self.testCase[i][@"result"];
        XCTAssertTrue([numberOne isExistInMatrix:self.testCase[i][@"maxtrix"] number:number.integerValue] == result.boolValue);
    }
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
