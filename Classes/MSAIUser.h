#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIUser : MSAIObject <NSCoding>

@property (nonatomic, copy) NSString *accountAcquisitionDate;
@property (nonatomic, copy) NSString *accountId;
@property (nonatomic, copy) NSString *userAgent;
@property (nonatomic, copy) NSString *userId;

- (id)initWithCoder:(NSCoder *)coder;

- (void)encodeWithCoder:(NSCoder *)coder;

@end
