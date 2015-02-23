#import <XCTest/XCTest.h>
#import "MSAICrashData.h"

@interface MSAICrashDataTests : XCTestCase

@end

@implementation MSAICrashDataTests

- (void)testverPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashData *item = [MSAICrashData new];
  item.version = expected;
  NSNumber *actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.version = expected;
  actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testheadersPropertyWorksAsExpected {
  MSAICrashDataHeaders *expected = [MSAICrashDataHeaders new];
  MSAICrashData *item = [MSAICrashData new];
  item.headers = expected;
  MSAICrashDataHeaders *actual = item.headers;
  XCTAssertTrue(actual == expected);
  
  expected = [MSAICrashDataHeaders new];
  item.headers = expected;
  actual = item.headers;
  XCTAssertTrue(actual == expected);
}

- (void)testThreadsPropertyWorksAsExpected {
  MSAICrashData *item = [MSAICrashData new];
  NSMutableArray *actual = (NSMutableArray *)item.threads;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testBinariesPropertyWorksAsExpected {
  MSAICrashData *item = [MSAICrashData new];
  NSMutableArray *actual = (NSMutableArray *)item.binaries;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testSerialize {
  MSAICrashData *item = [MSAICrashData new];
  item.version = @42;
  item.headers = [MSAICrashDataHeaders new];
  NSMutableArray *arrthreads = [NSMutableArray new];
  [arrthreads addObject:[MSAICrashDataThread new]];
  item.threads = arrthreads;
  NSMutableArray *arrbinaries = [NSMutableArray new];
  [arrbinaries addObject:[MSAICrashDataBinary new]];
  item.binaries = arrbinaries;
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"ver\":42,\"headers\":{},\"threads\":[{}],\"binaries\":[{}]}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
