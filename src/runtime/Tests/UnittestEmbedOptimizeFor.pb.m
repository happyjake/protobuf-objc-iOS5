// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "UnittestEmbedOptimizeFor.pb.h"

@implementation UnittestEmbedOptimizeForRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UnittestEmbedOptimizeForRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [UnittestOptimizeForRoot registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface TestEmbedOptimizedForSize ()
@property (strong) TestOptimizedForSize* optionalMessage;
@property (strong) NSMutableArray * repeatedMessageArray;
@end

@implementation TestEmbedOptimizedForSize

- (BOOL) hasOptionalMessage {
  return !!hasOptionalMessage_;
}
- (void) setHasOptionalMessage:(BOOL) value {
  hasOptionalMessage_ = !!value;
}
@synthesize optionalMessage;
@synthesize repeatedMessageArray;
@dynamic repeatedMessage;

- (id) init {
  if ((self = [super init])) {
    self.optionalMessage = [TestOptimizedForSize defaultInstance];
  }
  return self;
}
static TestEmbedOptimizedForSize* defaultTestEmbedOptimizedForSizeInstance = nil;
+ (void) initialize {
  if (self == [TestEmbedOptimizedForSize class]) {
    defaultTestEmbedOptimizedForSizeInstance = [[TestEmbedOptimizedForSize alloc] init];
  }
}
+ (TestEmbedOptimizedForSize*) defaultInstance {
  return defaultTestEmbedOptimizedForSizeInstance;
}
- (TestEmbedOptimizedForSize*) defaultInstance {
  return defaultTestEmbedOptimizedForSizeInstance;
}
- (NSArray *)repeatedMessage {
  return repeatedMessageArray;
}
- (TestOptimizedForSize*)repeatedMessageAtIndex:(NSUInteger)index {
  return [repeatedMessageArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  if (self.hasOptionalMessage) {
    if (!self.optionalMessage.isInitialized) {
      return NO;
    }
  }
  for (TestOptimizedForSize* element in self.repeatedMessage) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasOptionalMessage) {
    [output writeMessage:1 value:self.optionalMessage];
  }
  for (TestOptimizedForSize *element in self.repeatedMessageArray) {
    [output writeMessage:2 value:element];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasOptionalMessage) {
    size += computeMessageSize(1, self.optionalMessage);
  }
  for (TestOptimizedForSize *element in self.repeatedMessageArray) {
    size += computeMessageSize(2, element);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (TestEmbedOptimizedForSize*) parseFromData:(NSData*) data {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromData:data] build];
}
+ (TestEmbedOptimizedForSize*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (TestEmbedOptimizedForSize*) parseFromInputStream:(NSInputStream*) input {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromInputStream:input] build];
}
+ (TestEmbedOptimizedForSize*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestEmbedOptimizedForSize*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromCodedInputStream:input] build];
}
+ (TestEmbedOptimizedForSize*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestEmbedOptimizedForSize*)[[[TestEmbedOptimizedForSize builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestEmbedOptimizedForSize_Builder*) builder {
  return [[TestEmbedOptimizedForSize_Builder alloc] init] ;
}
+ (TestEmbedOptimizedForSize_Builder*) builderWithPrototype:(TestEmbedOptimizedForSize*) prototype {
  return [[TestEmbedOptimizedForSize builder] mergeFrom:prototype];
}
- (TestEmbedOptimizedForSize_Builder*) builder {
  return [TestEmbedOptimizedForSize builder];
}
- (TestEmbedOptimizedForSize_Builder*) toBuilder {
  return [TestEmbedOptimizedForSize builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasOptionalMessage) {
    [output appendFormat:@"%@%@ {\n", indent, @"optionalMessage"];
    [self.optionalMessage writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  for (TestOptimizedForSize* element in self.repeatedMessageArray) {
    [output appendFormat:@"%@%@ {\n", indent, @"repeatedMessage"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[TestEmbedOptimizedForSize class]]) {
    return NO;
  }
  TestEmbedOptimizedForSize *otherMessage = other;
  return
      self.hasOptionalMessage == otherMessage.hasOptionalMessage &&
      (!self.hasOptionalMessage || [self.optionalMessage isEqual:otherMessage.optionalMessage]) &&
      
      [self.repeatedMessageArray isEqualToArray:otherMessage.repeatedMessageArray] &&
      
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  NSUInteger hashCode = 7;
  if (self.hasOptionalMessage) {
    hashCode = hashCode * 31 + [self.optionalMessage hash];
  }
  for (TestOptimizedForSize* element in self.repeatedMessageArray) {
    hashCode = hashCode * 31 + [element hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface TestEmbedOptimizedForSize_Builder()
@property (strong) TestEmbedOptimizedForSize* result;
@end

@implementation TestEmbedOptimizedForSize_Builder
@synthesize result;

- (id) init {
  if ((self = [super init])) {
    self.result = [[TestEmbedOptimizedForSize alloc] init] ;
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (TestEmbedOptimizedForSize_Builder*) clear {
  self.result = [[TestEmbedOptimizedForSize alloc] init] ;
  return self;
}
- (TestEmbedOptimizedForSize_Builder*) clone {
  return [TestEmbedOptimizedForSize builderWithPrototype:result];
}
- (TestEmbedOptimizedForSize*) defaultInstance {
  return [TestEmbedOptimizedForSize defaultInstance];
}
- (TestEmbedOptimizedForSize*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (TestEmbedOptimizedForSize*) buildPartial {
  TestEmbedOptimizedForSize* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (TestEmbedOptimizedForSize_Builder*) mergeFrom:(TestEmbedOptimizedForSize*) other {
  if (other == [TestEmbedOptimizedForSize defaultInstance]) {
    return self;
  }
  if (other.hasOptionalMessage) {
    [self mergeOptionalMessage:other.optionalMessage];
  }
  if (other.repeatedMessageArray.count > 0) {
    if (result.repeatedMessageArray == nil) {
      result.repeatedMessageArray = [other.repeatedMessageArray copy] ;
    } else {
      [result.repeatedMessageArray addObjectsFromArray:other.repeatedMessageArray];
      
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (TestEmbedOptimizedForSize_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (TestEmbedOptimizedForSize_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        TestOptimizedForSize_Builder* subBuilder = [TestOptimizedForSize builder];
        if (self.hasOptionalMessage) {
          [subBuilder mergeFrom:self.optionalMessage];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setOptionalMessage:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        TestOptimizedForSize_Builder* subBuilder = [TestOptimizedForSize builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addRepeatedMessage:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasOptionalMessage {
  return result.hasOptionalMessage;
}
- (TestOptimizedForSize*) optionalMessage {
  return result.optionalMessage;
}
- (TestEmbedOptimizedForSize_Builder*) setOptionalMessage:(TestOptimizedForSize*) value {
  result.hasOptionalMessage = YES;
  result.optionalMessage = value;
  return self;
}
- (TestEmbedOptimizedForSize_Builder*) setOptionalMessageBuilder:(TestOptimizedForSize_Builder*) builderForValue {
  return [self setOptionalMessage:[builderForValue build]];
}
- (TestEmbedOptimizedForSize_Builder*) mergeOptionalMessage:(TestOptimizedForSize*) value {
  if (result.hasOptionalMessage &&
      result.optionalMessage != [TestOptimizedForSize defaultInstance]) {
    result.optionalMessage =
      [[[TestOptimizedForSize builderWithPrototype:result.optionalMessage] mergeFrom:value] buildPartial];
  } else {
    result.optionalMessage = value;
  }
  result.hasOptionalMessage = YES;
  return self;
}
- (TestEmbedOptimizedForSize_Builder*) clearOptionalMessage {
  result.hasOptionalMessage = NO;
  result.optionalMessage = [TestOptimizedForSize defaultInstance];
  return self;
}
- (NSMutableArray *)repeatedMessage {
  return result.repeatedMessageArray;
}
- (TestOptimizedForSize*)repeatedMessageAtIndex:(NSUInteger)index {
  return [result repeatedMessageAtIndex:index];
}
- (TestEmbedOptimizedForSize_Builder *)addRepeatedMessage:(TestOptimizedForSize*)value {
  if (result.repeatedMessageArray == nil) {
      result.repeatedMessageArray =  [[NSMutableArray alloc] init ];
  }
  [result.repeatedMessageArray addObject:value];
  return self;
}
- (TestEmbedOptimizedForSize_Builder *)setRepeatedMessageArray:(NSArray *)array {
  result.repeatedMessageArray = [[NSMutableArray alloc] init ];
  return self;
}
- (TestEmbedOptimizedForSize_Builder *)setRepeatedMessageValues:(const TestOptimizedForSize* *)values count:(NSUInteger)count {
  result.repeatedMessageArray = [[NSMutableArray alloc] init ];
  return self;
}
- (TestEmbedOptimizedForSize_Builder *)clearRepeatedMessage {
  result.repeatedMessageArray = nil;
  return self;
}
@end

