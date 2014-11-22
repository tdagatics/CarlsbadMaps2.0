//
//  PointOfInterestAnnotation.m
//  CarlsbadMaps2.0
//
//  Created by Anthony Dagati on 11/22/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "PointOfInterestAnnotation.h"

@implementation PointOfInterestAnnotation

-(CLLocationCoordinate2D)coordinate
{
    CLLocationCoordinate2D coordinate;
    
    coordinate.latitude = [self.latitude doubleValue];
    coordinate.longitude = [self.longitude doubleValue];
    
    return coordinate;
    
}
@end
