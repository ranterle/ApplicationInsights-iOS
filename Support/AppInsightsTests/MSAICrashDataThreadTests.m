#import <XCTest/XCTest.h>
#import "MSAICrashDataThread.h"

@interface MSAICrashDataThreadTests : XCTestCase

@end

@implementation MSAICrashDataThreadTests

- (void)testidPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataThread *item = [MSAICrashDataThread new];
  item.crashDataThreadId = expected;
  NSNumber *actual = item.crashDataThreadId;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.crashDataThreadId = expected;
  actual = item.crashDataThreadId;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testFramesPropertyWorksAsExpected {
  MSAICrashDataThread *item = [MSAICrashDataThread new];
  NSMutableArray *actual = (NSMutableArray *)item.frames;
  XCTAssertNotNil(actual, @"Pass");
}

- (void)testSerialize {
  MSAICrashDataThread *item = [MSAICrashDataThread new];
  item.crashDataThreadId = @42;
  NSMutableArray *arrframes = [NSMutableArray new];
  [arrframes addObject:[MSAICrashDataThreadFrame new]];
  item.frames = arrframes;
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"id\":42,\"frames\":[{}]}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
