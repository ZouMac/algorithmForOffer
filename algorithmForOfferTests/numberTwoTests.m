//
//  numberTwoTests.m
//  algorithmForOfferTests
//
//  Created by Zou Tan on 2019/5/9.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "numberTwo.h"

@interface numberTwoTests : XCTestCase

@property (nonatomic, copy) NSString *oldString;

@end

@implementation numberTwoTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.oldString = @" we are coders 。  。 . . ";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.oldString = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSString *replaceString = [numberTwo replaceSpace:self.oldString length:self.oldString.length];
    
    XCTAssertTrue([replaceString isEqualToString:@"%2dwe%2dare%2dcoders%2d。%2d%2d。%2d.%2d.%2d"]);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
