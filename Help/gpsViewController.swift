//
//  gpsViewController.swift
//  Help
//
//  Created by Jorge Salas on 5/1/20.
//  Copyright © 2020 ndnu. All rights reserved.
//

import UIKit
import MapKit

class gpsViewController: UIViewController, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    
    
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.requestWhenInUseAuthorization()
        // Do any additional setup after loading the view.
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()

        }

    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = (locValue.latitude) (locValue.longitude)")
        let userLocation = locations.last
        let viewRegion = MKCoordinateRegion.init(center: (userLocation?.coordinate)!, latitudinalMeters: 600, longitudinalMeters: 600)
        self.map.setRegion(viewRegion, animated: true)
    }
}
