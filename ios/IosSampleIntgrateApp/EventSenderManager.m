//
//  EventSenderManager.m
//  IosSampleIntgrateApp
//
//  Created by Ran Zeller on 12/05/2020.
//  Copyright © 2020 Ran Zeller. All rights reserved.
//

#import "EventSenderManager.h"

@implementation EventSenderManager

RCT_EXPORT_MODULE();

+ (id)allocWithZone:(NSZone *)zone {
    static EventSenderManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

+ (void) sendEvent{
  EventSenderManager *inst = [EventSenderManager allocWithZone:nil];
  [inst runJSCode];
}

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"runJSCode"];
}

- (void)runJSCode{
  NSLog(@"enject java script call");
  [super sendEventWithName:@"runJSCode" body:@"params form native"];
}

@end
