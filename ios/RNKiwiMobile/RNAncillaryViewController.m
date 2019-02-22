//
//  RNAncillaryViewController.m
//  RNKiwiMobile
//
//  Created by Vedran Blazenka on 22/02/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNAncillaryViewController.h"

@interface RNAncillaryViewController()

@property (nonatomic, strong) NSString* moduleName;
@property (nonatomic, strong) NSDictionary* properties;

@end

@implementation RNAncillaryViewController

- (instancetype)initWithModule:(NSString *)moduleName initialProperties:(NSDictionary *)properties {
  self = [super init]
  
  if (self) {
    _moduleName = moduleName;
    _properties = properties;
  }
  
  return self
}

@end
