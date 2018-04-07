//
//  FotoViewController.swift
//  Werkstuk1_Sergio_Braet
//
//  Created by student on 07/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class FotoViewController: UIViewController {

    @IBOutlet weak var imgFotoGroot: UIImageView!
    var fotoLocatie:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFotoGroot.image = UIImage(named: fotoLocatie!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
