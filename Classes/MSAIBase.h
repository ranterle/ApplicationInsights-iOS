#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIBase : MSAITelemetryData <NSCoding>

@property (nonatomic, copy) NSString *baseType;

@end
