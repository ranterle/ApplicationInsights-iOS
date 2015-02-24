#import "MSAIMessageData.h"
/// Data contract class for type MessageData.
@implementation MSAIMessageData
@synthesize envelopeTypeName = _envelopeTypeName;
@synthesize dataTypeName = _dataTypeName;

/// Initializes a new instance of the class.
- (instancetype)init {
  if(self = [super init]) {
    _envelopeTypeName = @"Microsoft.ApplicationInsights.Message";
    _dataTypeName = @"MessageData";
    self.version = @2;
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
  if(self.message != nil) {
    [dict setObject:self.message forKey:@"message"];
  }
  [dict setObject:[NSNumber numberWithInt:(int)self.severityLevel] forKey:@"severityLevel"];
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
    self.message = [coder decodeObjectForKey:@"self.message"];
    self.severityLevel = (MSAISeverityLevel)[coder decodeIntForKey:@"self.severityLevel"];
    self.properties = [coder decodeObjectForKey:@"self.properties"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:_envelopeTypeName forKey:@"_envelopeTypeName"];
  [coder encodeObject:_dataTypeName forKey:@"_dataTypeName"];
  [coder encodeObject:self.version forKey:@"self.version"];
  [coder encodeObject:self.message forKey:@"self.message"];
  [coder encodeInt:self.severityLevel forKey:@"self.severityLevel"];
  [coder encodeObject:self.properties forKey:@"self.properties"];
}

@end
