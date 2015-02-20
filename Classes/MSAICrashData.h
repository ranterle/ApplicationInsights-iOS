#import "MSAICrashDataHeaders.h"
#import "MSAICrashDataThread.h"
#import "MSAICrashDataBinary.h"
#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAICrashData : MSAIDomain <NSCoding>

@property (nonatomic, copy, readonly)NSString *envelopeTypeName;
@property (nonatomic, copy, readonly)NSString *dataTypeName;
@property (nonatomic, strong) MSAICrashDataHeaders *headers;
@property (nonatomic, copy) NSMutableArray *threads;
@property (nonatomic, copy) NSMutableArray *binaries;

@end
