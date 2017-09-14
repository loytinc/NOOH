//
//  ViewController.swift
//  NOOH
//
//  Created by Brice Prather on 9/14/17.
//  Copyright © 2017 Life On Your Terms, Inc. All rights reserved.
//

import UIKit

import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        
        if let manager = locationManager {
            print("we have a managger")
            manager.delegate = self
            manager.requestAlwaysAuthorization()
            manager.requestLocation()
            manager.startUpdatingLocation()
        } else {
            print("no manager")
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //        print(locations)
        for location in locations {
            print(location.coordinate)
            //            print(location.coordinate.latitude)
            //            print(location.coordinate.longitude)
        }
    }
    
    
    
    
}

