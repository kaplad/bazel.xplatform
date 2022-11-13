//
//  NativeBridge.m

#import "NativeBridge.h"

#include "common/library/header.hpp"

@implementation NativeBridge
 
+ (NSString*) sayHello {
  const std::string hello = Library::sayHello();
  return [NSString stringWithCString: hello.c_str() 
                            encoding: [NSString defaultCStringEncoding]];
}

@end