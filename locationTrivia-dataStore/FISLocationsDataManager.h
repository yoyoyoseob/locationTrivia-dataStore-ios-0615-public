//
//  FISLocationsDataManager.h
//  locationTrivia-dataStore
//
//  Created by Joe Burgess on 6/23/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISLocationsDataManager : NSObject

@property (strong, nonatomic) NSMutableArray *locations;
+ (instancetype)sharedLocationsDataManager;
@end
