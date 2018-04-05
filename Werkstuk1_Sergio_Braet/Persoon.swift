//
//  Persoon.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 05/04/18.
//  Copyright © 2018 student. All rights reserved.
//
import Foundation
import MapKit

//: iedere persoon bevat een naam, voornaam, foto, adres (straat, huisnummer,postcode, gemeente), gps coördinaten en een telefoonnummer

class Persoon{
    var naam:String
    var voornaam:String
    var foto:String
    var straat:String
    var huisnummer:Int
    var postcode:Int
    var gemeente:String
    var coordinaten: CLLocationCoordinate2D
    var telefoonnummer:String

    
    init(naam: String, voornaam: String, foto: String, straat: String, huisnummer: Int, postcode: Int, gemeente: String, coordinaten: CLLocationCoordinate2D, telefoonnummer: String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
        self.coordinaten = coordinaten
        self.telefoonnummer = telefoonnummer
    }
}
