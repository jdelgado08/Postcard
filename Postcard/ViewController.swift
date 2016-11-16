//
//  ViewController.swift
//  Postcard
//
//  Created by João Paulo Brás Delgado on 15/11/2016.
//  Copyright © 2016 JoaoDelgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        
        messageLabel.isHidden = false;
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.red
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //close keyboard
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal) 
        
        
    }

    
}//fim

