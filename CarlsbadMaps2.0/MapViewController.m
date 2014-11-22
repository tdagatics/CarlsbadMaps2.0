//
//  MapViewController.m
//  CarlsbadMaps2.0
//
//  Created by Anthony Dagati on 11/22/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>


@interface MapViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapViewController

-(void)updateMapViewAnnotations
{
    [self.mapView removeAnnotation:self.mapView.annotations];
    [self.mapView addAnnotation:self.pointOfInterest];
    [self.mapView showAnnotations:self.pointOfInterest animated:YES];
}

-(void)setMapView:(MKMapView *)mapView {
    _mapView = mapView;
    _mapView.delegate = self;
    [self updateMapViewAnnotations];
}

-(void)setPointOfInterest:(PointOfInterest *)pointOfInterest
{
    _pointOfInterest = pointOfInterest;
    self.pointOfInterest.address = pointOfInterest.address;
    self.pointOfInterest.name = pointOfInterest.name;
    self.pointOfInterest.longitude = pointOfInterest.longitude;
    self.pointOfInterest.latitude = pointOfInterest.latitude;
    self.pointOfInterest.photo = pointOfInterest.photo;
    self.pointOfInterest.rating = pointOfInterest.rating;
    
    
    [self updateMapViewAnnotations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
