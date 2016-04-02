//
//  AutoRetrySampleTests.m
//  AutoRetrySampleTests
//
//  Created by 秋元　健太　◇ on 2016/04/02.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FugaAPI.h"

@interface AutoRetrySampleTests : XCTestCase

@end

@implementation AutoRetrySampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"test");
    FugaAPI *fugaAPI = [[FugaAPI alloc] init];
    [fugaAPI requestAPIWithString:@"aaa" params:@{@"key1":@(2)}];
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
