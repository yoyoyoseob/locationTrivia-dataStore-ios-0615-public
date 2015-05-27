//
//  FISLocationsDataManager.m
//  locationTrivia-dataStore
//
//  Created by Joe Burgess on 6/23/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISLocationsDataManager.h"

@implementation FISLocationsDataManager
+ (instancetype)sharedLocationsDataManager {
    static FISLocationsDataManager *_sharedLocationsDataManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedLocationsDataManager = [[FISLocationsDataManager alloc] init];
    });

    return _sharedLocationsDataManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _locations = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
