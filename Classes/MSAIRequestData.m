#import "MSAIRequestData.h"
/// Data contract class for type RequestData.
@implementation MSAIRequestData

/// Initializes a new instance of the class.
- (instancetype)init {
  if(self = [super init]) {
    self.envelopeTypeName = @"Microsoft.ApplicationInsights.Request";
    self.dataTypeName = @"RequestData";
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
  if(self.requestDataId != nil) {
    [dict setObject:self.requestDataId forKey:@"id"];
  }
  if(self.name != nil) {
    [dict setObject:self.name forKey:@"name"];
  }
  if(self.startTime != nil) {
    [dict setObject:self.startTime forKey:@"startTime"];
  }
  if(self.duration != nil) {
    [dict setObject:self.duration forKey:@"duration"];
  }
  if(self.responseCode != nil) {
    [dict setObject:self.responseCode forKey:@"responseCode"];
  }
  NSString *strsuccess = [NSString stringWithFormat:@"%s", (self.success) ? "true" : "false"];
  [dict setObject:strsuccess forKey:@"success"];
  if(self.httpMethod != nil) {
    [dict setObject:self.httpMethod forKey:@"httpMethod"];
  }
  if(self.url != nil) {
    [dict setObject:self.url forKey:@"url"];
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
    self.requestDataId = [coder decodeObjectForKey:@"self.requestDataId"];
    self.name = [coder decodeObjectForKey:@"self.name"];
    self.startTime = [coder decodeObjectForKey:@"self.startTime"];
    self.duration = [coder decodeObjectForKey:@"self.duration"];
    self.responseCode = [coder decodeObjectForKey:@"self.responseCode"];
    self.success = [coder decodeBoolForKey:@"self.success"];
    self.httpMethod = [coder decodeObjectForKey:@"self.httpMethod"];
    self.url = [coder decodeObjectForKey:@"self.url"];
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
  [coder encodeObject:self.requestDataId forKey:@"self.requestDataId"];
  [coder encodeObject:self.name forKey:@"self.name"];
  [coder encodeObject:self.startTime forKey:@"self.startTime"];
  [coder encodeObject:self.duration forKey:@"self.duration"];
  [coder encodeObject:self.responseCode forKey:@"self.responseCode"];
  [coder encodeBool:self.success forKey:@"self.success"];
  [coder encodeObject:self.httpMethod forKey:@"self.httpMethod"];
  [coder encodeObject:self.url forKey:@"self.url"];
  [coder encodeObject:self.properties forKey:@"self.properties"];
  [coder encodeObject:self.measurements forKey:@"self.measurements"];
}

@end
