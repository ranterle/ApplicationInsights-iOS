#import <XCTest/XCTest.h>
#import "MSAICrashDataThreadFrame.h"

@interface MSAICrashDataThreadFrameTests : XCTestCase

@end

@implementation MSAICrashDataThreadFrameTests

- (void)testaddressPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataThreadFrame *item = [MSAICrashDataThreadFrame new];
  item.address = expected;
  NSString *actual = item.address;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.address = expected;
  actual = item.address;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testsymbolPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataThreadFrame *item = [MSAICrashDataThreadFrame new];
  item.symbol = expected;
  NSString *actual = item.symbol;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.symbol = expected;
  actual = item.symbol;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testRegistersPropertyWorksAsExpected {
  MSAICrashDataThreadFrame *item = [MSAICrashDataThreadFrame new];
  NSDictionary *actual = (NSDictionary *)item.registers;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testSerialize {
  MSAICrashDataThreadFrame *item = [MSAICrashDataThreadFrame new];
  item.address = @"Test string";
  item.symbol = @"Test string";
  item.registers = [MSAIOrderedDictionary dictionaryWithObjectsAndKeys: @"test value 1", @"key1", @"test value 2", @"key2", nil];
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"address\":\"Test string\",\"symbol\":\"Test string\",\"registers\":{\"key1\":\"test value 1\",\"key2\":\"test value 2\"}}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
