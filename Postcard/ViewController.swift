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
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
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
        nameLabel.isHidden = false;
        
        messageLabel.textColor = UIColor.red
        messageLabel.text = enterMessageTextField.text
        nameLabel.textColor = UIColor.blue
        nameLabel.text = enterNameTextField.text
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //close keyboard
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
    }

    
}//fim

