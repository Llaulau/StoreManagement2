//
//  ProviderViewController.swift
//  StoreManagement
//
//  Created by ifage-user on 18.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ProviderViewController: UIViewController {
    
    var from: ProvidersViewController?

    @IBOutlet weak var companyName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var telephone: UITextField!
    
    @IBAction func saveProvider(_ sender: Any) {
        
        let provider = Provider(company: companyName!.text!, email: email!.text!, address: address!.text!, telephone: telephone!.text!)
        self.from!.providers.append(provider)
        self.from!.tableView.reloadData()
        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
