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
        
        // Check if the device can send mail
        guard MFMailComposeViewController.canSendMail() else {
            // Add an alert to let the user know they can't send mail.
            return
        }
        
        // Setup the composer
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["YourEmail@mail.com"])
        composer.setSubject("Hello World!")
        composer.setMessageBody("I LOVE SWIFT", isHTML: false)
        
        // Present the composer viewController
        present(composer, animated: true)
        
        
    }
    
    //================
    // AMRK: - Actions
    //================

    @IBAction func emailButtonTapped(_ sender: SAButton) {
        
        // Needs to be ran on an actual device
        showMailMessage()
        
    }
} // End Class

extension ViewController: MFMailComposeViewControllerDelegate {
    
    // Allow the user to dismiss the mail composer
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            // Show error
            controller.dismiss(animated: true)
            
            switch result {
            case .cancelled:
                print("Cancelled")
            case .failed:
                print("Failed to send")
            case .saved:
                print("Saved")
            case .sent:
                print("Email Sent")
            }
            
        }
        
        controller.dismiss(animated: true)
        
    }
    
}
