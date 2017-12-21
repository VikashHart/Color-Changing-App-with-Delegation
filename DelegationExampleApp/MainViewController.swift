//
//  MainViewController.swift
//  DelegationExampleApp
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 Vikash Hart. All rights reserved.
//

import UIKit


//Conforming to this protocol means that we need the method and the data that will be coming into this view controller. THIS is where information will be recieved!!!
class MainViewController: UIViewController, setColorVCDelegate {
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
        print("received message from delegate")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //use this method when your VC is connected to a Nav Controller which is connected to the VC you want to segue to.
        if let nav = segue.destination as? UINavigationController {
            let secondVC = nav.childViewControllers.first as! ColorSettingsViewController
            secondVC.delegate = self
            
            //use this method when your VC is directly connected to the VC you want to segue to.
//        if let secondVC = segue.destination as? ColorSettingsViewController {
//            secondVC.delegate = self
//        }
        }
    }
    
}
