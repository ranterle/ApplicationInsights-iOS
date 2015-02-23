#import <XCTest/XCTest.h>
#import "MSAICrashDataHeaders.h"

@interface MSAICrashDataHeadersTests : XCTestCase

@end

@implementation MSAICrashDataHeadersTests

- (void)testidPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.crashDataHeadersId = expected;
  NSString *actual = item.crashDataHeadersId;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.crashDataHeadersId = expected;
  actual = item.crashDataHeadersId;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testprocessPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.process = expected;
  NSString *actual = item.process;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.process = expected;
  actual = item.process;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testprocess_idPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.processId = expected;
  NSNumber *actual = item.processId;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.processId = expected;
  actual = item.processId;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testparent_processPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.parentProcess = expected;
  NSString *actual = item.parentProcess;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.parentProcess = expected;
  actual = item.parentProcess;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testparent_process_idPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.parentProcessId = expected;
  NSNumber *actual = item.parentProcessId;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.parentProcessId = expected;
  actual = item.parentProcessId;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testcrash_threadPropertyWorksAsExpected {
  NSNumber *expected = @42;
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.crashThread = expected;
  NSNumber *actual = item.crashThread;
  XCTAssertTrue([actual isEqual:expected]);
  
  expected = @13;
  item.crashThread = expected;
  actual = item.crashThread;
  XCTAssertTrue([actual isEqual:expected]);
}

- (void)testapplication_pathPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.applicationPath = expected;
  NSString *actual = item.applicationPath;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.applicationPath = expected;
  actual = item.applicationPath;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testapplication_identifierPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.applicationIdentifier = expected;
  NSString *actual = item.applicationIdentifier;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.applicationIdentifier = expected;
  actual = item.applicationIdentifier;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testapplication_buildPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.applicationBuild = expected;
  NSString *actual = item.applicationBuild;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.applicationBuild = expected;
  actual = item.applicationBuild;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testexception_typePropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.exceptionType = expected;
  NSString *actual = item.exceptionType;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.exceptionType = expected;
  actual = item.exceptionType;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testexception_codePropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.exceptionCode = expected;
  NSString *actual = item.exceptionCode;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.exceptionCode = expected;
  actual = item.exceptionCode;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testexception_addressPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.exceptionAddress = expected;
  NSString *actual = item.exceptionAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.exceptionAddress = expected;
  actual = item.exceptionAddress;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testexception_reasonPropertyWorksAsExpected {
  NSString *expected = @"Test string";
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.exceptionReason = expected;
  NSString *actual = item.exceptionReason;
  XCTAssertTrue([actual isEqualToString:expected]);
  
  expected = @"Other string";
  item.exceptionReason = expected;
  actual = item.exceptionReason;
  XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testSerialize {
  MSAICrashDataHeaders *item = [MSAICrashDataHeaders new];
  item.crashDataHeadersId = @"Test string";
  item.process = @"Test string";
  item.processId = @42;
  item.parentProcess = @"Test string";
  item.parentProcessId = @42;
  item.crashThread = @42;
  item.applicationPath = @"Test string";
  item.applicationIdentifier = @"Test string";
  item.applicationBuild = @"Test string";
  item.exceptionType = @"Test string";
  item.exceptionCode = @"Test string";
  item.exceptionAddress = @"Test string";
  item.exceptionReason = @"Test string";
  NSString *actual = [item serializeToString];
  NSString *expected = @"{\"id\":\"Test string\",\"process\":\"Test string\",\"processId\":42,\"parentProcess\":\"Test string\",\"parentProcessId\":42,\"crashThread\":42,\"applicationPath\":\"Test string\",\"applicationIdentifier\":\"Test string\",\"applicationBuild\":\"Test string\",\"exceptionType\":\"Test string\",\"exceptionCode\":\"Test string\",\"exceptionAddress\":\"Test string\",\"exceptionReason\":\"Test string\"}";
  XCTAssertTrue([actual isEqualToString:expected]);
}

@end
