//
//  ViewController.swift
//  EmailCompose
//
//  Created by Lucas Dahl on 1/20/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //================
    // MARL: - Methods
    //================
    
    func showMailMessage() {
        
        
    }
    
    //================
    // AMRK: - Actions
    //================

    @IBAction func emailButtonTapped(_ sender: SAButton) {
        
        // Needs to be ran on an actual device
        showMailMessage()
        
    }
}

