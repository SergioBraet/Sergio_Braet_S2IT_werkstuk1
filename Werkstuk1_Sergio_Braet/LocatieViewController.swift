//
//  LocatieViewController.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 06/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class LocatieViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var personen = [Persoon]()
    

    @IBOutlet weak var myMapview: MKMapView!
    

    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        for persoon in personen{
            self.myMapview.addAnnotation(Annotation(coordinate: persoon.coordinaten, title: persoon.voornaam + " " + persoon.naam))
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: center, span: span)
        myMapview.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
