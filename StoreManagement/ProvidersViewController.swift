//
//  ProviderViewController.swift
//  StoreManagement
//
//  Created by ifage-user on 18.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ProvidersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var providers = [Provider]()
    
    func generateProviders() {
        providers.append(Provider(company: "UBS", email: "contact@ubs.com", address: "Bahnofstrasse 6, Zurich", telephone: "058423456"))
        providers.append(Provider(company: "Migros", email: "contact@migros.com", address: "Rue de Lausanne 19, Genève", telephone: "0224324565"))
        providers.append(Provider(company: "Raiffeisen", email: "contact@raiffeisen.com", address: "Bahnofstrasse 6, Basel", telephone: "0763456576"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        generateProviders()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return providers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "providerCellIdentifier", for: indexPath) as? ProviderTableViewCell
        
        let provider = providers[indexPath.row]
        // Configure the cell...
        
        cell?.companyName?.text = provider.companyName
        cell?.email?.text = provider.email
        cell?.telephone?.text = provider.address
        cell?.address?.text = provider.telephone
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // return CGFloat(indexPath.row * 20)
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                // let providerToDelete = providers[indexPath.row]
                providers.remove(at: indexPath.row)
                tableView.reloadData()
            }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addProviderSegue",
            let destination = segue.destination as? ProviderViewController {
            destination.from = self
        }
        
    }


}
