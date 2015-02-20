#import "MSAIEventData.h"
#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIPageViewData : MSAIEventData <NSCoding>

@property (nonatomic, copy, readonly)NSString *envelopeTypeName;
@property (nonatomic, copy, readonly)NSString *dataTypeName;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *duration;

@end
