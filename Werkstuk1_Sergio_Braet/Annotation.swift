//
//  Annotation.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 06/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import MapKit

class Annotation: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
    }
    
}
