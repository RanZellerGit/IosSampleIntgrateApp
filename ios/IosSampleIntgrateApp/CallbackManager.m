//
//  CallbackManager.m
//  IosSampleIntgrateApp
//
//  Created by Ran Zeller on 13/05/2020.
//  Copyright © 2020 Ran Zeller. All rights reserved.
//

#import "CallbackManager.h"
#import <React/RCTLog.h>

@implementation CallbackManager

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(calledFromJS:(NSString *)data)
{
  RCTLogInfo(@"the data(%@) came from JS ", data);
}

@end

