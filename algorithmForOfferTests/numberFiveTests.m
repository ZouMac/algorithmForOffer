//
//  numberFiveTests.m
//  algorithmForOfferTests
//
//  Created by Zou Tan on 2019/5/14.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NumberFive.h"

@interface numberFiveTests : XCTestCase

@property (nonatomic, strong) NumberFive *queue;

@end

@implementation numberFiveTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.queue = [[NumberFive alloc] init];
    [self.queue push:@0];
    [self.queue push:@1];
    [self.queue push:@2];
    [self.queue push:@3];
    [self.queue push:@4];
    [self.queue push:@5];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.queue = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue([[self.queue pop] isEqual:@0]);
    XCTAssertTrue([[self.queue pop] isEqual:@1]);
    XCTAssertTrue([[self.queue pop] isEqual:@2]);
    XCTAssertTrue([[self.queue pop] isEqual:@3]);
    XCTAssertTrue([[self.queue pop] isEqual:@4]);
    XCTAssertTrue([[self.queue pop] isEqual:@5]);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
