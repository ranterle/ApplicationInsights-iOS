#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIApplication : MSAIObject <NSCoding>

@property (nonatomic, copy) NSString *version;

@end
