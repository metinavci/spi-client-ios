//
//  SPITestUtils.m
//  Tests
//
//  Created by Mike Gouline on 3/7/18.
//  Copyright © 2018 Assembly Payments. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SPITestUtils.h"
#import "SPIClient+Internal.h"

@implementation SPITestUtils

+ (SPIClient *)clientWithTestSecrets {
    NSString *encKey = @"81CF9E6A14CDAF244A30B298D4CECB505C730CE352C6AF6E1DE61B3232E24D3F";
    NSString *hmacKey = @"D35060723C9EECDB8AEA019581381CB08F64469FC61A5A04FE553EBDB5CD55B9";
    SPIClient *client = [[SPIClient alloc] init];
    [client setSecretEncKey:encKey hmacKey:hmacKey];
    return client;
}

+ (void)waitForAsync:(NSTimeInterval)seconds {
    (void) [XCTWaiter waitForExpectations:@[
                                            [[XCTestExpectation alloc] initWithDescription:@"waiting for result"]
                                            ] timeout:seconds];
}

@end
