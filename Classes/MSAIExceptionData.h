#import "MSAIExceptionDetails.h"
#import "MSAISeverityLevel.h"
#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIExceptionData : MSAIDomain <NSCoding>

@property (nonatomic, copy, readonly) NSString *envelopeTypeName;
@property (nonatomic, copy, readonly) NSString *dataTypeName;
@property (nonatomic, copy) NSString *handledAt;
@property (nonatomic, strong) NSMutableArray *exceptions;
@property (nonatomic, assign) MSAISeverityLevel severityLevel;
@property (nonatomic, copy) NSString *problemId;
@property (nonatomic, copy) NSNumber *crashThreadId;
@property (nonatomic, strong) NSDictionary *measurements;

@end
