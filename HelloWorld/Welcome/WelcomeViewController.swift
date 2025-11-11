//
//  WelcomeViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    
    var username: String?  // <- recibirá el nombre desde el segundo VC
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.title = NSLocalizedString("welcome_title", comment: "")
            if let user = username {
                labelWelcome.text = String(format: NSLocalizedString("welcome_message", comment: ""), user)
            } else {
                labelWelcome.text = NSLocalizedString("welcome_default", comment: "")
            }

        }
    }
