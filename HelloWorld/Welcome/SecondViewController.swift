//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by Student on 7/10/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    let WelcomeSegue = "ShowWelcomeSegue"
    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelHello.text = NSLocalizedString("hello_message", comment: "")
        self.title = NSLocalizedString("second_view", comment: "")

    }
    
    
    @IBAction func doneClicked(_ sender: UIButton) {
        
        if username.text!.isEmpty {
                let alert = UIAlertController(title: NSLocalizedString("alert_title", comment: ""),
                                              message: NSLocalizedString("alert_message", comment: ""),
                                              preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("alert_ok", comment: ""), style: .default, handler: nil))

                self.present(alert, animated: true, completion: nil)
            } else {
                self.performSegue(withIdentifier: WelcomeSegue, sender: self)
            }
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == WelcomeSegue {
                let destinationVC = segue.destination as! WelcomeViewController
                destinationVC.username = username.text
            }
        }

}
