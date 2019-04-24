//
//  exercismOCTests.m
//  exercismOCTests
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Leap.h"

@interface exercismOCTests : XCTestCase

@end

@implementation exercismOCTests

- (void)testVanillaLeapYear {
	Leap *year = [[Leap alloc] initWithCalendarYear:@92233720368775808];
	XCTAssert(year.isLeapYear);
}

- (void)testAnyOldYear {
	Leap *year = [[Leap alloc] initWithCalendarYear:@1997];
	XCTAssertFalse(year.isLeapYear);
}

- (void)testCentury {
	Leap *year = [[Leap alloc] initWithCalendarYear:@1900];
	XCTAssertFalse(year.isLeapYear);
}

- (void)testExceptionalCentury {
	Leap *year = [[Leap alloc] initWithCalendarYear:@2400];
	XCTAssert(year.isLeapYear);
}


@end
