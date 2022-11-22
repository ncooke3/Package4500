//
//  PackageTests.m
//  
//
//  Created by Nick Cooke on 11/22/22.
//

#import <XCTest/XCTest.h>

@import Package4500;

@interface PackageTests : XCTestCase
@end

@implementation PackageTests

- (void)testIssue4500 {
    // It is expected that the resource bundle should be non-nil, even when
    // run from the command line.
    XCTAssertNotNil([Package bundle]);
}

@end
