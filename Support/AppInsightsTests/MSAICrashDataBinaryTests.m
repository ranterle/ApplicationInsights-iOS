#import <XCTest/XCTest.h>
#import "MSAICrashDataBinary.h"

@interface MSAICrashDataBinaryTests : XCTestCase

@end

@implementation MSAICrashDataBinaryTests

- (void)teststart_addressPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.startAddress = expected;
  NSString *actual = item.startAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.startAddress = expected;
  actual = item.startAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testend_addressPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.endAddress = expected;
  NSString *actual = item.endAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.endAddress = expected;
  actual = item.endAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testnamePropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.name = expected;
  NSString *actual = item.name;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.name = expected;
  actual = item.name;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testcpu_typePropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.cpuType = expected;
  NSNumber *actual = item.cpuType;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.cpuType = expected;
  actual = item.cpuType;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testcpu_sub_typePropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.cpuSubType = expected;
  NSNumber *actual = item.cpuSubType;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.cpuSubType = expected;
  actual = item.cpuSubType;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testuuidPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.uuid = expected;
  NSString *actual = item.uuid;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.uuid = expected;
  actual = item.uuid;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testpathPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.path = expected;
  NSString *actual = item.path;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.path = expected;
  actual = item.path;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testSerialize {
  MSAICrashDataBinary *item = [MSAICrashDataBinary new];
  item.startAddress = @"Test string";
  item.endAddress = @"Test string";
  item.name = @"Test string";
  item.cpuType = @42;
  item.cpuSubType = @42;
  item.uuid = @"Test string";
  item.path = @"Test string";
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"startAddress\":\"Test string\",\"endAddress\":\"Test string\",\"name\":\"Test string\",\"cpuType\":42,\"cpuSubType\":42,\"uuid\":\"Test string\",\"path\":\"Test string\"}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
