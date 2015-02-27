#import "MSAITelemetryData.h"

@implementation MSAITelemetryData

- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  if (self.version != nil) {
    [dict setObject:self.version forKey:@"ver"];
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
}


@end
