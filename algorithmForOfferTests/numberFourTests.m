//
//  numberFourTests.m
//  algorithmForOfferTests
//
//  Created by Zou Tan on 2019/5/12.
//  Copyright © 2019 Zou Tan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TZBinaryTree.h"
#import "NumberFour.h"

@interface numberFourTests : XCTestCase

@property (nonatomic, assign) TreeNode *resultRoot;

@property (nonatomic, copy) NSArray <NSNumber *> *pre;

@property (nonatomic, copy) NSArray <NSNumber *> *vin;

@end

@implementation numberFourTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // {1,2,4,7,3,5,6,8} pre
    // {4,7,2,1,5,3,8,6} vin
    
    self.pre = @[@1,@2,@4,@7,@3,@5,@6,@8];
    self.vin = @[@4,@7,@2,@1,@5,@3,@8,@6];
    
    
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    TreeNode *root = [NumberFour reConstructBinaryTree:self.pre vin:self.vin];
    
    TZBinaryTree *binaryTree = [[TZBinaryTree alloc] init];
    binaryTree.root = root;
    
    XCTAssertTrue([[[binaryTree getTreePreList] componentsJoinedByString:@","] isEqualToString:[self.pre componentsJoinedByString:@","]]);
    
    XCTAssertTrue([[[binaryTree getTreeVinList] componentsJoinedByString:@","] isEqualToString:[self.vin componentsJoinedByString:@","]]);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
