//
//  Unit_Tests.m
//  Unit Tests
//
//  Created by Jānis Kiršteins on 7/16/13.
//  Copyright (c) 2013 Jānis Kiršteins. All rights reserved.
//

#import "JKBigInteger_Tests.h"
#import "JKBigInteger.h"

@implementation JKBigInteger_Tests

- (void)testExample {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000000000"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"0000001000000"];

    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValue], @"1000001000000", @"Test example failed!");
}

// FIXME: Fails on CI, need to fix
//- (void)testArchiving {
//    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
//    NSString *filePath = [rootPath stringByAppendingPathComponent:@"file.file"];
//
//    // test 1
//    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111222233334444555566667777888899990000"];
//    [NSKeyedArchiver archiveRootObject:int1 toFile:filePath];
//
//    JKBigInteger *int2 = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
//    XCTAssertEqualObjects([int1 stringValue], [int2 stringValue], @"Test archiving failed!");
//
//    // test2
//    int1 = [[JKBigInteger alloc] initWithString:@"-123471238940713294701327508917230516230561320512352315021305012395091032950923520395013258623185465463545681428354162345612435416523"];
//    [NSKeyedArchiver archiveRootObject:int1 toFile:filePath];
//
//    int2 = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
//    XCTAssertEqualObjects([int1 stringValue], [int2 stringValue], @"Test archiving failed!");
//}

- (void)testDescription0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2131231231231231231231231231231231231239876543210"];
    NSString *result = [NSString stringWithFormat:@"%@", int1];
    XCTAssertEqualObjects(result, @"2131231231231231231231231231231231231239876543210", @"Test Description 0 failed!");
}

- (void)testEqual0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71039487035325136518735"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71039487035325136518736"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedAscending, @"Test equal 0 failed!");
}

- (void)testEqual1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71039487035325136518799"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71039487035325136518736"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedDescending, @"Test equal 1 failed!");
}

- (void)testEqual2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"829472590263457620374652704650234675072346507826340750432234051"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"829472590263457620374652704650234675072346507826340750432234051"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedSame, @"Test equal 2 failed!");
}

// Auto generated tests below

- (void)testAdd0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1324363173651736969755537217937400034034948144717050671802" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"835301321423387782311290724817434637195392781" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1324363173652572271076960605719711324759765579354246064583", @"Add test 0 failed");
}



- (void)testSubtract21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101011110100111100110100000111100101011111011110100010101111010100001011010111111110111001001100010100011100011111011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010010010110100110101111011111010111100110011100101001000000001110001010110010010100001111111101010011011100111110100101110101011110110001001001101011000011110101110011100100001100010111001011011001000011111101111000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-100010010010110100110101111011111010111100110011100101001000000001110001010110010010100001111111100100111101000000001110001101101111001010001101011001000010100100001101000001100001101011101111111000100100111011110011100", @"Subtract test 21 failed");
}

- (void)testMultiply6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5389569624767407006198847527515043931375183511696368136723421482104092" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2648632818869555518615619200" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"14274990987741429823561007764690182705373943754201980982191404953918036148129770803055391433766400", @"Multiply test 6 failed");
}

- (void)testMultiply49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23423155242233670107246035244350417166556405522564120241411625256757775677114064706305045176437750" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"572376514503716461341154043762316452260722642653330530721752166170222355344346302514142002674631113410745" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16342715734700575357512263566664264715566755775756771377577534072336067606337436106113267655341240726314221214622512075302025505041106341313052711463020031112346575131331127213332544230154506431662311210", @"Multiply test 49 failed");
}


- (void)testDivide7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10110011100010011100001010000000010110101000011010010010010100000100101100110110011011100010101001101011101001101110001010001001000000011100101010010" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 7 failed");
}



- (void)testRemainder70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000101111101000110011110001101101111101000111101000110100001000100011101101111011011110100110110111000100001011101101100010111111001011111001111100001001110010100111111010001100100000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101110000110010000101011000101000110111001011010111010011011000101010111000011001111000110001010101111111011001111011010101101000111111000100011111010110001001000111001110110010010010101101111010100000010100100011000110010011111010110010110011000010110001011010011111100100101011001100100100000110001110011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000101111101000110011110001101101111101000111101000110100001000100011101101111011011110100110110111000100001011101101100010111111001011111001111100001001110010100111111010001100100000", @"Remainder test 70 failed");
}

- (void)testDivideAndRemainder24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011111010111001110101011101101110011010101110101001101111110101011011111001010001110011100101011010100000100101010110010001111000000010010100001010000111010010001010100000101001101101100" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 24 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"11010", @"DivideAndRemainder test 24 failed");
}

- (void)testDivideAndRemainder91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110011000110111011001010000110100011000010110111001000000110111101110100100101110111101100110011000010000011111101011111000011000111111000101100111000000111101101110000111101101100101001000001100011010011000010001011010011110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111100111100011010001111000100110010100011011100110010100100001010001101010000011101100010000111011001000011000011000001011001000" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"110101101010111100101011110111001000110001111111111110100100110110110100101000010011010001111011110", @"DivideAndRemainder test 91 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"111011011011011100100111100110100111100111001101111110000001010001000101011001100000010111101000001110111001010111111001110000001", @"DivideAndRemainder test 91 failed");
}

- (void)testPow31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010011001111100111010000111110010111010111000111110" andRadix:2];
    JKBigInteger *result = [int1 pow:20];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101111011111111111010010101001001100101010111011101000000101010000001101010011000101001111110001000101010011010110111010100100010111111010011000001100010000000110101111111100001011100010011010000101101000011011110110100011001000111001110101100110011010001000010010011011000000000001010000010110001000001000000011100010111010110101011110110010110111010110111011011010000001110000010001111111110100100111000011001011001111010010010101110100100011010111011101100100010100110011001111010011010010001110111011101011100101101000100000001101001111111010101101100110010100101101101010001001100010000101001010010110110101110110000110000111110101100011011111011100101110100000111100100101101010100100100100000110100101011100111010110111011010100011100111010111010110000111010111001111110110100101101010101100001001011010001111110111110000001010010001010100000010011000100101010010110100110011100011111010100011110011111110110000011000000100000011011110011110011111000100110000100001011101111111100111010010010010000100100010110101010011000000100000000000000000000", @"Pow test 31 failed");
}

- (void)testPowMod67 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"8971927" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"5117957930887" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"1928567236065" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1437815380378", @"PowMod test 67 failed");
}

- (void)testPowMod68 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"67445777442" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"3930771" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"4541604" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"773076", @"PowMod test 68 failed");
}

- (void)testPowMod69 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-52133" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"16783" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"3337" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"541", @"PowMod test 69 failed");
}

- (void)testPowMod70 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"22" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"7787554274" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"823549" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"503210", @"PowMod test 70 failed");
}

- (void)testPowMod71 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"46816685133" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"272923" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"22855404855" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4704305202", @"PowMod test 71 failed");
}

- (void)testPowMod72 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"181225207536" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"22085689725" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"67955765111" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5581219593", @"PowMod test 72 failed");
}

- (void)testPowMod73 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"207971493064" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"41707850" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"9115746425" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6454330776", @"PowMod test 73 failed");
}

- (void)testPowMod74 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"42840650" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"206759347" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"852090956" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"15995168", @"PowMod test 74 failed");
}

- (void)testPowMod75 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"27703329637330" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"20686092" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"8407250" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6767250", @"PowMod test 75 failed");
}

- (void)testPowMod76 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-4953" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"669615" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"741766623319" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"660186892888", @"PowMod test 76 failed");
}

- (void)testPowMod77 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"11957529241" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"380932179443" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"973373783" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"970856001", @"PowMod test 77 failed");
}

- (void)testPowMod78 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"78726001052485" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"62593863" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"24053" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"22766", @"PowMod test 78 failed");
}

- (void)testPowMod79 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"340516095" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"798875" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"2556443616" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"348235359", @"PowMod test 79 failed");
}

- (void)testPowMod80 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"954899979887" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"472716" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"979176" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"21817", @"PowMod test 80 failed");
}

- (void)testPowMod81 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"1669727071" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"1008664017563" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"37837" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"17717", @"PowMod test 81 failed");
}

- (void)testPowMod82 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"592681" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"30974401363809" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"65653048867352" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2039369146553", @"PowMod test 82 failed");
}

- (void)testPowMod83 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-47884" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"525888510" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"60238953788774" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"8466915489354", @"PowMod test 83 failed");
}

- (void)testPowMod84 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"5643430747" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"31164" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"8629966388917" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7441630635230", @"PowMod test 84 failed");
}

- (void)testPowMod85 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-9134817647675" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"7013427758650" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"14493293680" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"10069704265", @"PowMod test 85 failed");
}

- (void)testPowMod86 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"16875464" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"4824632" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"157384425878173" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"110131510850102", @"PowMod test 86 failed");
}

- (void)testPowMod87 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"8460275679756" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"1249967640481565" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"3530286614" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1855000398", @"PowMod test 87 failed");
}

- (void)testPowMod88 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-21034390" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"9455714874055" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"499517062" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"436407454", @"PowMod test 88 failed");
}

- (void)testPowMod89 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-67878984199" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"6771837956" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"26518969637" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"25569641018", @"PowMod test 89 failed");
}

- (void)testPowMod90 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"24845854" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"38512788750888" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"97880493" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"44709115", @"PowMod test 90 failed");
}

- (void)testPowMod91 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"913222119920236" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"89756684" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"24503538" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2358514", @"PowMod test 91 failed");
}

- (void)testPowMod92 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"282825837874763" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"49707087" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"4419250635" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2888992652", @"PowMod test 92 failed");
}

- (void)testPowMod93 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"63007338" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"778023537730086" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"51807416" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"42047040", @"PowMod test 93 failed");
}

- (void)testPowMod94 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"86515727" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"37854772745819" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"932061443536802" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"913958455659941", @"PowMod test 94 failed");
}

- (void)testPowMod95 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"16752138958" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"84132272429" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"883645897" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"66146743", @"PowMod test 95 failed");
}

- (void)testPowMod96 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"76020717" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"31715587905196" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"205759754" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"84248649", @"PowMod test 96 failed");
}

- (void)testPowMod97 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"408229656454238" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"503345091356" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"5122409740" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1428721156", @"PowMod test 97 failed");
}

- (void)testPowMod98 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"335638746639" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"5761369582225304" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"4092173299" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3495108299", @"PowMod test 98 failed");
}

- (void)testPowMod99 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"4118216" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"163393347759" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"33772615" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"18314396", @"PowMod test 99 failed");
}



- (void)testPowMod120 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-34727277565261165051" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"53891223619" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"2799195351079917048" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2607666110843551325", @"PowMod test 120 failed");
}

- (void)testPowMod121 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"-2641799394644983" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"25158485319487" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"548355600533885000" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"46465320728116873", @"PowMod test 121 failed");
}

- (void)testPowMod122 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"767992806236118220" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"58099104472634917573004" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"48648467500194542" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"23718576556107152", @"PowMod test 122 failed");
}

- (void)testPowMod123 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"783048980600864030214223520282343154949582263988130988029" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"5640798680918146067495300825091961866365823288705" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"712576055151408429943237184396668347415006718010549447" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"132303576760619346367560792334725765196706066347238184", @"PowMod test 123 failed");
}

- (void)testPowMod124 {
    JKBigInteger *val = [[JKBigInteger alloc] initWithString:@"54419766013288244584593400647946050509291116271357" andRadix:10];
    JKBigInteger *exp = [[JKBigInteger alloc] initWithString:@"37442044497849759156397618484039469808263267657304" andRadix:10];
    JKBigInteger *mod = [[JKBigInteger alloc] initWithString:@"55409955411797081810766022756739065410388681698701498" andRadix:10];
    JKBigInteger *result = [val pow:exp andMod:mod];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"625989815794948434601895148375843191288774735399931", @"PowMod test 124 failed");
}

//////////

- (void)testNegate0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2750131224152760014475320211" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2750131224152760014475320211", @"Negate test 0 failed");
}

- (void)testNegate1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-43140714307142103043413115553006302563026423437273351676300247532702527540072542266" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"43140714307142103043413115553006302563026423437273351676300247532702527540072542266", @"Negate test 1 failed");
}

- (void)testNegate2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-576537302666603723353561734514426705157376120371747247" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"576537302666603723353561734514426705157376120371747247", @"Negate test 2 failed");
}

- (void)testNegate3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5025100371351918116931836251310170427742666091560358454353100688241850295453189652110" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5025100371351918116931836251310170427742666091560358454353100688241850295453189652110", @"Negate test 3 failed");
}

- (void)testNegate4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-d635bb263fc40128bd6" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d635bb263fc40128bd6", @"Negate test 4 failed");
}

- (void)testNegate5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-17403317064672252524025573574316747711020653102034521204446355136522413536402152762573013" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"17403317064672252524025573574316747711020653102034521204446355136522413536402152762573013", @"Negate test 5 failed");
}

- (void)testNegate6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-72924c835285e07" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"72924c835285e07", @"Negate test 6 failed");
}

- (void)testNegate7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-a93fe5639ab54f46aa8600df6ed4520f1b9" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a93fe5639ab54f46aa8600df6ed4520f1b9", @"Negate test 7 failed");
}

- (void)testNegate8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-101011100111111011100001001011001101110011101001111101111010101111110111001011" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101011100111111011100001001011001101110011101001111101111010101111110111001011", @"Negate test 8 failed");
}

- (void)testNegate9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-81311427636509897098729852077040120062837773243630535885613882458752584748918031928712888" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"81311427636509897098729852077040120062837773243630535885613882458752584748918031928712888", @"Negate test 9 failed");
}

- (void)testNegate10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-c02f3148af10c680d" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c02f3148af10c680d", @"Negate test 10 failed");
}

- (void)testNegate11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-178897c95177a58affb8fc23b7ce32a2cbbea2cb401ea225883062422671ba2e65fc8a93c1f44151cee" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"178897c95177a58affb8fc23b7ce32a2cbbea2cb401ea225883062422671ba2e65fc8a93c1f44151cee", @"Negate test 11 failed");
}

- (void)testNegate12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2ef1b6869a5b535919ec95e56f5236" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2ef1b6869a5b535919ec95e56f5236", @"Negate test 12 failed");
}

- (void)testNegate13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-12764227aef08db5391cb860e84194876f79c94" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"12764227aef08db5391cb860e84194876f79c94", @"Negate test 13 failed");
}

- (void)testNegate14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-626076527166041764064634050725716650773574540534000754430565737341463742204101630113523727151731517640122403" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"626076527166041764064634050725716650773574540534000754430565737341463742204101630113523727151731517640122403", @"Negate test 14 failed");
}

- (void)testNegate15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2496bec0cf" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2496bec0cf", @"Negate test 15 failed");
}

- (void)testNegate16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-65e89ee2c42b8425391c37198daad62704ca7860fdc837b86" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"65e89ee2c42b8425391c37198daad62704ca7860fdc837b86", @"Negate test 16 failed");
}

- (void)testNegate17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6383115566106726827683490091771369295590569091809427375" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6383115566106726827683490091771369295590569091809427375", @"Negate test 17 failed");
}


- (void)testNegate73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2226731322223101647" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2226731322223101647", @"Negate test 73 failed");
}


- (void)testAbs56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-40367720165" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"40367720165", @"Abs test 56 failed");
}

- (void)testAbs95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2010551033157653371475176462674400112416524732643107235523210365147262360025326640075727476476416612534" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2010551033157653371475176462674400112416524732643107235523210365147262360025326640075727476476416612534", @"Abs test 95 failed");
}

- (void)testXor0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6715346573722654450045534275311712477000035" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"414477007557330045222541375452530157364335561510741271625632142747605025643072677074571600" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"414477007557330045222541375452530157364335561516054137356110716317640511436363165403571635", @"Xor test 0 failed");
}



- (void)testOr0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111110101100011011010011101010111110001001001101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011101100011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000111110101100011011010011101010111111011101101111", @"Or test 0 failed");
}


- (void)testAnd0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"208048f1409957d4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1131860" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"111040", @"And test 0 failed");
}

- (void)testShiftLeft0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"307424453637160273173635" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:72];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"307424453637160273173635000000000000000000000000", @"Shift left test 0 failed");
}

- (void)testShiftRight0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110000111001010111111110111000011011010000001111111000111100111101101100010011111111010011" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:12];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000111001010111111110111000011011010000001111111000111100111101101100010011", @"Shift right test 0 failed");
}


- (void)testGCD0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"360653554062321104754063306713030601050225371" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6603142356005" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 0 failed");
}





@end
