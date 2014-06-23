//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by Joe Burgess on 6/23/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISLocationsDataStore : NSObject

@property (strong, nonatomic) NSArray *locations;
+ (instancetype)sharedLocationsDataStore;
@end
