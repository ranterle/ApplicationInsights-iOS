#import "MSAISession.h"
/// Data contract class for type Session.
@implementation MSAISession

/// Initializes a new instance of the class.
- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
    MSAIOrderedDictionary *dict = [super serializeToDictionary];
    if (self.sessionId != nil) {
        [dict setObject:self.sessionId forKey:@"ai.session.id"];
    }
    if (self.isFirst != nil) {
        [dict setObject:self.isFirst forKey:@"ai.session.isFirst"];
    }
    if (self.isNew != nil) {
        [dict setObject:self.isNew forKey:@"ai.session.isNew"];
    }
    return dict;
}

#pragma mark - NSCoding

- (id)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if(self) {
    self.sessionId = [coder decodeObjectForKey:@"self.sessionId"];
    self.isFirst = [coder decodeObjectForKey:@"self.isFirst"];
    self.isNew = [coder decodeObjectForKey:@"self.isNew"];
  }

  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:self.sessionId forKey:@"self.sessionId"];
  [coder encodeObject:self.isFirst forKey:@"self.isFirst"];
  [coder encodeObject:self.isNew forKey:@"self.isNew"];
}


@end
