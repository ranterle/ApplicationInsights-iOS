#import "MSAICrashDataThreadFrame.h"
#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAICrashDataThread : MSAIObject <NSCoding>

@property (nonatomic, copy) NSNumber *crashDataThreadId;
@property (nonatomic, copy) NSMutableArray *frames;

- (id)initWithCoder:(NSCoder *)coder;

- (void)encodeWithCoder:(NSCoder *)coder;

@end
