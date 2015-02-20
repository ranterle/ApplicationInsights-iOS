#import "MSAIObject.h"

///Data contract class for type MSAITelemetryData.
@interface MSAITelemetryData : MSAIObject

@property (nonatomic, strong) NSNumber *version;
@property (nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSMutableDictionary *properties;

@end
