//
//  RNAncillaryBridge.m
//  RNKiwiMobile
//
//  Created by Vedran Blazenka on 22/02/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNAncillaryBridge.h"
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>
#import <React/RCTBundleProvider.h>
#import <CodePush/CodePush.h>

@interface RNAncillaryBridge()

@property (nonatomic, strong) RCTBridge* bridge;

@end

@implementation RNAncillaryBridge

+ (id)sharedInstance {
  static dispatch_once_t pred = 0;
  __strong static id _sharedObject = nil;
  dispatch_once(&pred, ^{
    _sharedObject = [[self alloc] init];
  });
  return _sharedObject;
}

- (void)initBridgeWithCodePush:(NSString *)codePushKey codePushVersion:(NSString *)codePushVersion {
  [CodePush overrideAppVersion:codePushVersion];
  [CodePush setDeploymentKey:codePushKey];
  [self initBridge];
}

- (RCTBridge *)bridge {
  if (!_bridge) {
    [self initBridge];
  }
  return _bridge;
}

- (void)initBridge {
  if (!_bridge) {
    _bridge = [[RCTBridge alloc] initWithBundleURL:[self bundleUrl] moduleProvider:nil launchOptions:nil];
  }
}

- (NSURL *)bundleUrl {
  return [CodePush bundleURLForResource:@"main" withExtension:@"jsbundle" subdirectory:nil bundle:[NSBundle bundleWithIdentifier:@"com.kiwi.RNKiwiMobile"]];

// TODO: See if you should load local bundle in DEBUG or not
//  #ifdef DEBUG
//    return [NSURL URLWithString:@"http://localhost:8081/app/native.bundle?platform=ios&dev=true"];
//  #else
//    return [CodePush bundleURLForResource:@"main" withExtension:@"jsbundle" subdirectory:nil bundle:[NSBundle bundleWithIdentifier:@"com.kiwi.RNKiwiMobile"]];
//  #endif
}

@end
