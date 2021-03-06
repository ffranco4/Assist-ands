//
//  AssistanceViewController.swift
//  Assist-ands
//
//  Created by Student on 8/5/20.
//  Copyright © 2020 Student. All rights reserved.
//


//imported mapkit
import UIKit
import CoreLocation
import MapKit

class AssistanceViewController: UIViewController {
    var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let existingViewFrame = view.bounds
        mapView = MKMapView(frame: existingViewFrame)
        view.addSubview(mapView)
        
        setUpCoreLocation()
    }
//set up pointsofinterest to filter only pharmacies, police and hospitals
    var clManager: CLLocationManager!
    func setUpCoreLocation() {
        mapView.delegate = self
        mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.pharmacy, .police, .hospital,])
    
        clManager = CLLocationManager()
        clManager.requestAlwaysAuthorization()
        clManager.delegate = self
        clManager.desiredAccuracy = kCLLocationAccuracyBest;
        
        clManager.startUpdatingLocation()
    }
}
//set up location (done in settings)
extension AssistanceViewController: CLLocationManagerDelegate {
    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation])
    {
        print("YES! NewLocation:", locations.count)
        
        mapView.centerCoordinate = locations[0].coordinate
        let reg = MKCoordinateRegion(center: locations[0].coordinate,
                                     latitudinalMeters: 1500,
                                     longitudinalMeters: 1500)
        mapView.setRegion(reg, animated: true)
        mapView.showsUserLocation = true
    }
}

extension AssistanceViewController: MKMapViewDelegate { }
//(Done in project settings) had app request permission to use location on info tab (privacy)
