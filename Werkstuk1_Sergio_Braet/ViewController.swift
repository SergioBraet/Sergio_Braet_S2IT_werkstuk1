//
//  ViewController.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 04/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblNaam: UILabel!
    var persoon:Persoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblNaam.text = (persoon?.voornaam)! + " " + (persoon?.naam)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

