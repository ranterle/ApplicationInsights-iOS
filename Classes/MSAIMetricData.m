#import "MSAIMetricData.h"
/// Data contract class for type MetricData.
@implementation MSAIMetricData
@synthesize envelopeTypeName = _envelopeTypeName;
@synthesize dataTypeName = _dataTypeName;

/// Initializes a new instance of the class.
- (instancetype)init {
  if(self = [super init]) {
    _envelopeTypeName = @"Microsoft.ApplicationInsights.Metric";
    _dataTypeName = @"MetricData";
    self.version = @2;
    self.metrics = [NSMutableArray new];
    self.properties = [NSDictionary new];
  }
  return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  if(self.metrics != nil) {
    NSMutableArray *metricsArray = [NSMutableArray array];
    for (MSAIDataPoint *metricsElement in self.metrics) {
      [metricsArray addObject:[metricsElement serializeToDictionary]];
    }
    [dict setObject:metricsArray forKey:@"metrics"];
  }
  if(self.properties != nil) {
    [dict setObject:self.properties forKey:@"properties"];
  }
  return dict;
}

#pragma mark - NSCoding

- (id)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if(self) {
    _envelopeTypeName =[coder decodeObjectForKey:@"_envelopeTypeName"];
    _dataTypeName = [coder decodeObjectForKey:@"_dataTypeName"];
    self.version = [coder decodeObjectForKey:@"self.version"];
    self.metrics = [coder decodeObjectForKey:@"self.metrics"];
    self.properties = [coder decodeObjectForKey:@"self.properties"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:_envelopeTypeName forKey:@"_envelopeTypeName"];
  [coder encodeObject:_dataTypeName forKey:@"_dataTypeName"];
  [coder encodeObject:self.version forKey:@"self.version"];
  [coder encodeObject:self.metrics forKey:@"self.metrics"];
  [coder encodeObject:self.properties forKey:@"self.properties"];
}

@end
