#import "MSAIEventData.h"
/// Data contract class for type EventData.
@implementation MSAIEventData

/// Initializes a new instance of the class.
- (instancetype)init {
  if(self = [super init]) {
    self.envelopeTypeName = @"Microsoft.ApplicationInsights.Event";
    self.dataTypeName = @"EventData";
    self.version = @2;
    self.properties = [NSDictionary new];
    self.measurements = [NSDictionary new];
  }
  return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  if(self.name != nil) {
    [dict setObject:self.name forKey:@"name"];
  }
  if(self.properties != nil) {
    [dict setObject:self.properties forKey:@"properties"];
  }
  if(self.measurements != nil) {
    [dict setObject:self.measurements forKey:@"measurements"];
  }
  return dict;
}

#pragma mark - NSCoding

- (id)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if(self) {
    self.envelopeTypeName =[coder decodeObjectForKey:@"envelopeTypeName"];
    self.dataTypeName = [coder decodeObjectForKey:@"dataTypeName"];
    self.version = [coder decodeObjectForKey:@"self.version"];
    self.name = [coder decodeObjectForKey:@"self.name"];
    self.properties = [coder decodeObjectForKey:@"self.properties"];
    self.measurements = [coder decodeObjectForKey:@"self.measurements"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:self.envelopeTypeName forKey:@"envelopeTypeName"];
  [coder encodeObject:self.dataTypeName forKey:@"dataTypeName"];
  [coder encodeObject:self.version forKey:@"self.version"];
  [coder encodeObject:self.name forKey:@"self.name"];
  [coder encodeObject:self.properties forKey:@"self.properties"];
  [coder encodeObject:self.measurements forKey:@"self.measurements"];
}

@end
