//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class BirthdayViewController: UIViewController {
    
    @IBOutlet weak var labelBirthday: UILabel!
    @IBOutlet weak var labelWish: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = NSLocalizedString("hello_world", comment: "")
        labelBirthday.text = NSLocalizedString("birthday_message", comment: "")
        labelWish.text = NSLocalizedString("birthday_wish", comment: "")
    }
}


