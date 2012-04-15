//
//  main.m
//  PonpokoIOSAppFrameWork
//
//  Created by 越智修司 on 12/04/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PIAppDelegate.h"

int main(int argc, char *argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([PIAppDelegate class]));
  [pool release];
  return retVal;


}
