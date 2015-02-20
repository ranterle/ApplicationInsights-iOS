#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIStackFrame : MSAIObject <NSCoding>

@property (nonatomic, copy) NSNumber *level;
@property (nonatomic, copy) NSString *method;
@property (nonatomic, copy) NSString *assembly;
@property (nonatomic, copy) NSString *fileName;
@property (nonatomic, copy) NSNumber *line;

- (id)initWithCoder:(NSCoder *)coder;

- (void)encodeWithCoder:(NSCoder *)coder;

@end
