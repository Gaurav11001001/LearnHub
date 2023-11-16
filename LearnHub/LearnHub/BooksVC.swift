//
//  BooksVC.swift
//  LearnHub
//
//  Created by mac on 05/11/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class BooksVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var subjects: [String] = ["PHYSICS", "CHEMISTRY", "MATHS"]
    var physics: [String] = ["Concepts of Physics by H.C.Verma", "Modern ABC Physics by Satish K.Gupta", "New Simplified Physics by S.L. Arora", "Pradeep's Fundamental Physics by K.L. Gomber and K.L. Gogia","NCERT (Part I and Part II)"," "]
    var chemistry: [String] = ["Modern ABC+ Chemistry by Dr. S.P. Jauhar","Pradeep's New Course Chemistry by S.C. Kherpal, and S.N. Dhawan", "SChand", "Cengage", "NCERT (Part I and Part II)"," "]
    var maths: [String] = ["Mathematics by RD Sharma", "CBSE Examination Mathematics: 15 Sample Question Papers by Prem Kumar", "Problems Plus In IIT Mathematics by A Das Gupta", "I.I.T. Mathematics by M.L. Khanna", "CBSE U Like Class 12 Mathematics Sample Papers with solutions by Best Book Publishing House", "NCERT Exemplar Problems by NCERT", " "]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return subjects.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0) {
            return physics.count
        }
        else if(section == 1) {
            return chemistry.count
        }
        else {
            return maths.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return subjects[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "reuse1", for: indexPath)
        if(indexPath.section == 0) {
            cell1.textLabel?.text = physics[indexPath.row]
        }
        else if(indexPath.section == 1) {
            cell1.textLabel?.text = chemistry[indexPath.row]
        }
        else {
            cell1.textLabel?.text = maths[indexPath.row]
        }
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var value1 : String = ""
        
        if(indexPath.section == 0) {
            value1 = physics[indexPath.row]
        }
        else if(indexPath.section == 1) {
            value1 = chemistry[indexPath.row]
        }
        else {
            value1 = maths[indexPath.row]
        }
        print(value1)
        
        let alt1 = UIAlertController(title: "Book", message: value1, preferredStyle: .alert)
        alt1.addAction(UIAlertAction(title: "Buy", style: .default, handler: nil))
        self.present(alt1, animated: false, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
