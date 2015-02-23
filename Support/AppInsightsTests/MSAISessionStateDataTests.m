#import <XCTest/XCTest.h>
#import "MSAISessionStateData.h"

@interface MSAISessionStateDataTests : XCTestCase

@end

@implementation MSAISessionStateDataTests

- (void)testverPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAISessionStateData *item = [MSAISessionStateData new];
  item.version = expected;
  NSNumber *actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.version = expected;
  actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)teststatePropertyWorksAsExpected {
  MSAISessionState expected = 5;
  MSAISessionStateData *item = [MSAISessionStateData new];
  item.state = expected;
  MSAISessionState actual = item.state;
  XCTAssertTrue(actual == expected);
  
  expected = 3;
  item.state = expected;
  actual = item.state;
  XCTAssertTrue(actual == expected);
}

- (void)testSerialize {
  MSAISessionStateData *item = [MSAISessionStateData new];
  item.version = @42;
  item.state = 5;
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"ver\":42,\"state\":5}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
