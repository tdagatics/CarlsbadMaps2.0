//
//  PointOfInterest.h
//  CarlsbadMaps2.0
//
//  Created by Anthony Dagati on 11/22/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface PointOfInterest : NSManagedObject

@property (nonatomic, strong) NSManagedObjectContext *context;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * photo;
@property (nonatomic, retain) NSNumber * rating;

@end
