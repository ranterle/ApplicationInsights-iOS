#import "MSAIBase.h"
#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIData : MSAIBase <NSCoding>

@property (nonatomic, strong) MSAITelemetryData *baseData;

@end
