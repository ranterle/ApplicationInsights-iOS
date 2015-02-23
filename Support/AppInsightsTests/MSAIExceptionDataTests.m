#import <XCTest/XCTest.h>
#import "MSAIExceptionData.h"

@interface MSAIExceptionDataTests : XCTestCase

@end

@implementation MSAIExceptionDataTests

- (void)testverPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.version = expected;
  NSNumber *actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.version = expected;
  actual = item.version;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testhandled_atPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.handledAt = expected;
  NSString *actual = item.handledAt;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.handledAt = expected;
  actual = item.handledAt;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testExceptionsPropertyWorksAsExpected {
  MSAIExceptionData *item = [MSAIExceptionData new];
  NSMutableArray *actual = (NSMutableArray *)item.exceptions;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testseverity_levelPropertyWorksAsExpected {
  MSAISeverityLevel expected = 5;
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.severityLevel = expected;
  MSAISeverityLevel actual = item.severityLevel;
  XCTAssertTrue(actual == expected);
  
  expected = 3;
  item.severityLevel = expected;
  actual = item.severityLevel;
  XCTAssertTrue(actual == expected);
}

- (void)testproblem_idPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.problemId = expected;
  NSString *actual = item.problemId;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.problemId = expected;
  actual = item.problemId;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testcrash_thread_idPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.crashThreadId = expected;
  NSNumber *actual = item.crashThreadId;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.crashThreadId = expected;
  actual = item.crashThreadId;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testPropertiesPropertyWorksAsExpected {
  MSAIExceptionData *item = [MSAIExceptionData new];
  NSMutableDictionary *actual = (NSMutableDictionary *)item.properties;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testMeasurementsPropertyWorksAsExpected {
  MSAIExceptionData *item = [MSAIExceptionData new];
  NSMutableDictionary *actual = (NSMutableDictionary *)item.measurements;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testSerialize {
  MSAIExceptionData *item = [MSAIExceptionData new];
  item.version = @42;
  item.handledAt = @"Test string";
  NSMutableArray *arrexceptions = [NSMutableArray new];
  [arrexceptions addObject:[MSAIExceptionDetails new]];
  item.exceptions = arrexceptions;
  item.severityLevel = 5;
  item.problemId = @"Test string";
  item.crashThreadId = @42;
  item.properties = [MSAIOrderedDictionary dictionaryWithObjectsAndKeys: @"test value 1", @"key1", @"test value 2", @"key2", nil];
  item.measurements = [MSAIOrderedDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithDouble:3.1415], @"key1", [NSNumber numberWithDouble:42.2], @"key2", nil];
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"ver\":42,\"handledAt\":\"Test string\",\"exceptions\":[{\"hasFullStack\":true,\"parsedStack\":[]}],\"severityLevel\":5,\"problemId\":\"Test string\",\"crashThreadId\":42,\"properties\":{\"key1\":\"test value 1\",\"key2\":\"test value 2\"},\"measurements\":{\"key1\":3.1415,\"key2\":42.2}}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
