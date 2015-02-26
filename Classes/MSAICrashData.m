#import "MSAICrashData.h"
/// Data contract class for type CrashData.
@implementation MSAICrashData

/// Initializes a new instance of the class.
- (instancetype)init {
  if(self = [super init]) {
    self.envelopeTypeName = @"Microsoft.ApplicationInsights.Crash";
    self.dataTypeName = @"CrashData";
    self.version = @2;
    self.threads = [NSMutableArray new];
    self.binaries = [NSMutableArray new];
  }
  return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  if(self.headers != nil) {
    if([NSJSONSerialization isValidJSONObject:[self.headers serializeToDictionary]]) {
      [dict setObject:[self.headers serializeToDictionary] forKey:@"headers"];
    }
  }
  if(self.threads != nil) {
    NSMutableArray *threadsArray = [NSMutableArray array];
    for (MSAICrashDataThread *threadsElement in self.threads) {
      [threadsArray addObject:[threadsElement serializeToDictionary]];
    }
    [dict setObject:threadsArray forKey:@"threads"];
  }
  if(self.binaries != nil) {
    NSMutableArray *binariesArray = [NSMutableArray array];
    for (MSAICrashDataBinary *binariesElement in self.binaries) {
      [binariesArray addObject:[binariesElement serializeToDictionary]];
    }
    [dict setObject:binariesArray forKey:@"binaries"];
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
    self.headers = [coder decodeObjectForKey:@"self.headers"];
    self.threads = [coder decodeObjectForKey:@"self.threads"];
    self.binaries = [coder decodeObjectForKey:@"self.binaries"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:self.envelopeTypeName forKey:@"envelopeTypeName"];
  [coder encodeObject:self.dataTypeName forKey:@"dataTypeName"];
  [coder encodeObject:self.version forKey:@"self.version"];
  [coder encodeObject:self.headers forKey:@"self.headers"];
  [coder encodeObject:self.threads forKey:@"self.threads"];
  [coder encodeObject:self.binaries forKey:@"self.binaries"];
}

@end
