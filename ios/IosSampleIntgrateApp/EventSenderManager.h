//
//  EventSenderManager.h
//  IosSampleIntgrateApp
//
//  Created by Ran Zeller on 12/05/2020.
//  Copyright © 2020 Ran Zeller. All rights reserved.
//

#ifndef EventSenderManager_h
#define EventSenderManager_h

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface EventSenderManager : RCTEventEmitter <RCTBridgeModule>
+ (void) sendEvent;
@end

#endif 
