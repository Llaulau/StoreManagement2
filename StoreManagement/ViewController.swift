//
//  ViewController.swift
//  StoreManagement
//
//  Created by ifage-user on 30.10.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textUserID: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    private var okConnect: Bool = true
    
    @IBOutlet weak var lblMessage: UILabel!
    @IBAction func connectEvent(_ sender: UIButton) {
        print ("UserID: \(textUserID!.text!)")
        
        if textUserID!.text!.count < 3 || textPassword!.text!.count < 3 {
            okConnect = false
        }

        print ("Password: \(textPassword!.text!)")
        
        if textUserID!.text!.count < 3 || textPassword!.text!.count < 3 {
            okConnect = false
            lblMessage!.text = "Invalid userid or password"
            lblMessage!.isHidden = false
        }
        else {
            okConnect = true
            lblMessage!.isHidden = true
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblMessage!.isHidden = true
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "connectSegue" {
          return okConnect
        }
        
        return true

    }

}

