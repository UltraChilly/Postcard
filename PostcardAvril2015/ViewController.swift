//
//  ViewController.swift
//  PostcardAvril2015
//
//  Created by Cédric Stempin on 10/04/2015.
//  Copyright (c) 2015 HappyWhenItRains. All rights reserved.
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

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code Will evaluate when we press the button
        
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.backgroundColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
        
    }

}

