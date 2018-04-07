//
//  TableViewController.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 05/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon(naam: "Vermassen", voornaam: "Benny", foto: "benny", straat: "Schaperijstraat", huisnummer: 94, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.177565, longitude:  3.581237), telefoonnummer: "+32 493 49 88 77"),
                    Persoon(naam: "Van Vooren", voornaam: "Lisa", foto: "lisa", straat: "Bagnolsstraat", huisnummer: 5, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.176941, longitude:  3.583792), telefoonnummer: "0493 12 34 56"),
                    Persoon(naam: "Jansens", voornaam: "Tjorven", foto: "tjorven", straat: "Hugo Verrieststraat", huisnummer: 5, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.178645, longitude:  3.582037), telefoonnummer: "+32 473 00 00 01"),
                    Persoon(naam: "Dedoncker", voornaam: "Ine", foto: "ine", straat: "Pieter Ecrevissestraat", huisnummer: 13, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.176681, longitude:  3.582283), telefoonnummer: "0473 88 88 88"),
                    Persoon(naam: "De Bruyne", voornaam: "Saskia", foto: "saskia", straat: "Lekestraat", huisnummer: 79, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.179270, longitude:  3.585931), telefoonnummer: "+32 479 88 41 00"),
                    Persoon(naam: "Dedoncker", voornaam: "Maarten", foto: "maarten", straat: "Tuinbouwstraat", huisnummer: 7, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.186422, longitude:  3.584733), telefoonnummer: "+32 478 44 11 55"),
                    Persoon(naam: "Asat", voornaam: "Mohammed", foto: "mohammed", straat: "Raaigrasstraat", huisnummer: 15, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.190055, longitude:  3.584659), telefoonnummer: "+32 493 88 74 12"),
                    Persoon(naam: "Allaert", voornaam: "Koen", foto: "koen", straat: "Zonnebloemstraat", huisnummer: 12, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.187302, longitude:  3.580174), telefoonnummer: "0493 56 87 12"),
                    Persoon(naam: "Goethals", voornaam: "Sara", foto: "sara", straat: "Roze", huisnummer: 123, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.189759, longitude:  3.575452), telefoonnummer: "+32 480 77 11 11"),
                    Persoon(naam: "De Rycke", voornaam: "Lars", foto: "lars", straat: "Stuivenberg", huisnummer: 4, postcode: 9900, gemeente: "Eeklo", coordinaten: CLLocationCoordinate2D(latitude: 51.180790, longitude:  3.577120), telefoonnummer: "+32 471 98 76 54")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personenCell", for: indexPath)
        
        cell.textLabel?.text = self.personen[indexPath.row].naam + " " + self.personen[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named: self.personen[indexPath.row].foto)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //bron om gegevens door te sturen naar viewcontroller die in tab bar zit: https://stackoverflow.com/questions/27296742/pass-data-from-tableview-to-tab-bar-view-controller-in-swift
        
        if let tabBarVC = segue.destination as? UITabBarController {
            
            let personenVC: ViewController = tabBarVC.viewControllers?.first as! ViewController
            let locatieVC: LocatieViewController = tabBarVC.viewControllers?[1] as! LocatieViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            
            personenVC.persoon = self.personen[(indexPath?.row)!]
            locatieVC.personen = self.personen
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
