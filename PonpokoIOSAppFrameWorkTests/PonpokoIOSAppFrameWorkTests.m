//
//  PonpokoIOSAppFrameWorkTests.m
//  PonpokoIOSAppFrameWorkTests
//
//  Created by 越智修司 on 12/04/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PonpokoIOSAppFrameWorkTests.h"
#import "GDataXMLNode.h"
@implementation PonpokoIOSAppFrameWorkTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
  NSError* error;
  Log(@"");
  NSString* xmlString = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"root" ofType:@"xml"]
						  encoding:NSUTF8StringEncoding
						     error:&error ];
  Log(@"%@",xmlString);
  GDataXMLDocument* root = nil;
  if( xmlString ){
    root =     [[GDataXMLDocument alloc] initWithXMLString:xmlString
						  options:(XML_PARSE_NOCDATA | XML_PARSE_NOBLANKS | XML_PARSE_DTDLOAD |XML_PARSE_NOENT|XML_PARSE_XINCLUDE)
						  baseURL:[[NSBundle mainBundle] resourcePath]
						    error:(NSError **)&error];
    if( root ){
      Log(@"%@",[root rootElement]);
    }
    else{
      Log(@"%@",error);
    }
    
  }else{
    Log(@"%@",error);
  }

  STAssertTrue(root != nil,@"");

  Log(@"%@",[root description]);
}
      

@end
