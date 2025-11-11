//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    let BirthdaySegue = "ShowBirthdaySegue"
    let WorldSegue = "ShowWorldSegue"
    let ListSegue = "ShowListSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = NSLocalizedString("hello_world", comment: "")        
        
    }
    
    @IBAction func BirthdayClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: BirthdaySegue, sender: self)
    }
    @IBAction func helloWorldClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: WorldSegue, sender: self)
    }
    
    @IBAction func ListClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: ListSegue, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == WorldSegue {
            let destinationVC = segue.destination as! SecondViewController
            
        }
    }


}

