//
//  RNAncillaryBridge.h
//  RNKiwiMobile
//
//  Created by Vedran Blazenka on 22/02/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RCTBridge;

@interface RNAncillaryBridge : NSObject

+(RNAncillaryBridge*)sharedInstance;
-(void)initBridgeWithCodePush:(NSString *)codePushKey codePushVersion:(NSString *)codePushVersion;
-(RCTBridge *)bridge;

@end

