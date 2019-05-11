//
//  numberThreeTests.m
//  algorithmForOfferTests
//
//  Created by Zou Tan on 2019/5/11.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "linkedList.h"
#import "NumberThree.h"

@interface numberThreeTests : XCTestCase

@property (nonatomic, assign) ListNode *head;

@property (nonatomic, copy) NSArray *result;

@end

@implementation numberThreeTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.head = [linkedList createLinkedListWithArray:@[@1,@2,@3,@4,@5,@6,@7,@8,@9]].head;
    
    self.result = @[@9,@8,@7,@6,@5,@4,@3,@2,@1];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    self.head = NULL;
    self.result = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray * list = [NumberThree getListFromTailToHead:self.head];
    
    XCTAssertTrue([list isEqual:self.result]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
