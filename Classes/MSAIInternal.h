#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIInternal : MSAIObject <NSCoding>

@property (nonatomic, copy) NSString *sdkVersion;
@property (nonatomic, copy) NSString *agentVersion;

- (id)initWithCoder:(NSCoder *)coder;

- (void)encodeWithCoder:(NSCoder *)coder;

@end
