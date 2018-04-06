//
//  ViewController.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 04/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    var persoon:Persoon?
    
    @IBOutlet weak var lblNaam: UILabel!
    @IBOutlet weak var lblTelefoonnr: UILabel!
    @IBOutlet weak var lblAdres: UILabel!
    @IBOutlet weak var lblGemeente: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var mapview: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let titel = (persoon?.straat)! + " " + String((persoon?.huisnummer)!) 
        self.lblNaam.text = (persoon?.voornaam)! + " " + (persoon?.naam)!
        self.lblTelefoonnr.text = "Tel: " + (persoon?.telefoonnummer)!
        self.lblAdres.text = "Adres: " + (persoon?.straat)! + " " + String((persoon?.huisnummer)!)
        self.lblGemeente.text = "Gemeente: " + String((persoon?.postcode)!) + " " + (persoon?.gemeente)!
        self.foto.image = UIImage(named: (persoon?.foto)!)
        self.mapview.addAnnotation(Annotation(coordinate: (persoon?.coordinaten)!, title: titel))
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let locationCoordinate = persoon?.coordinaten
        let region = MKCoordinateRegion(center: locationCoordinate!, span: span)
        mapview.setRegion(region, animated: true)
    }
    

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

