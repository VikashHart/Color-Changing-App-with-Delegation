//
//  ColorSettingsViewController.swift
//  DelegationExampleApp
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 Vikash Hart. All rights reserved.
//

import UIKit

//Create this protocol in the place where information will be set.
protocol  setColorVCDelegate: class {
    func changeBackgroundColor(color: UIColor)
}

class ColorSettingsViewController: UIViewController {

    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    //delegate that will be the instance of the protocol 
    weak var delegate: setColorVCDelegate?
    
    @IBAction func dismissButton(_ sender: Any) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        //this is where you are passing the information 
        view.backgroundColor = sender.backgroundColor
        delegate?.changeBackgroundColor(color: sender.backgroundColor!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueButton.layer.borderColor = UIColor.white.cgColor
        blueButton.layer.borderWidth = 2.0
        //this will make the button round
        blueButton.layer.cornerRadius = blueButton.frame.width/2
        
        redButton.layer.borderColor = UIColor.white.cgColor
        redButton.layer.borderWidth = 2.0
        //this will make the button round
        redButton.layer.cornerRadius = redButton.frame.width/2
    }
}











