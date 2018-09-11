//
//  NSStringUtilTests.m
//  Tests
//
//  Created by Amir Kamali on 17/6/18.
//  Copyright © 2018 Assembly Payments. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Util.h"

@interface NSStringUtilTests : XCTestCase

@end

@implementation NSStringUtilTests

- (void)testTrimString {
    NSString *testString = @"    this is a test   ";
    XCTAssertTrue( [[testString trim] isEqualToString:@"this is a test"]);
}

- (void)testStringToDate {
    //Format "yyyy-MM-dd'T'HH:mm:ss.SSS"
    NSString *dateString = @"2010-01-03T04:03:02.01";
    NSDate *date = [dateString toDate];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [gregorian components:(NSCalendarUnitYear|NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitHour|NSCalendarUnitMinute)
                                                fromDate:date];
    
    XCTAssertEqual(components.year, 2010);
    XCTAssertEqual(components.month, 01);
    XCTAssertEqual(components.day, 3);
//    XCTAssertEqual(components.hour, 15); // FIXME: Doesn't work on other timezones!
    XCTAssertEqual(components.minute, 3);
}

@end
