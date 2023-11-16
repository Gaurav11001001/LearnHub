//
//  HelpVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class HelpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var quaries: UITextField!
    
    @IBAction func submitbtn(_ sender: UIButton) {
        let okhandler1 = {
            (action:UIAlertAction)->Void in
            self.name.text = ""
            self.email.text = ""
            self.phone.text = ""
            self.quaries.text = ""
        }
        
        let alert2 = UIAlertController(title: "Write Us", message: "You will get our response soon.", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler:okhandler1))
        self.present(alert2,animated: true,completion: nil)
        
    }
    
}
