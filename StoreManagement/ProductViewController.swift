//
//  ProductViewController.swift
//  StoreManagement
//
//  Created by ifage-user on 11.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
        var selectedProduct: Product!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    
    
    @IBOutlet weak var productDescription: UILabel!
    // Do any additional setup after loading the view.
    
    @IBAction func returnToPrevious(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshData()
    }
    
    func refreshData() {
        
        productName!.text = selectedProduct.name
        productImage!.image = UIImage(named: selectedProduct.imageFile)
        productPrice!.text = "\(selectedProduct.price)"
        productDescription!.text = selectedProduct.description
        
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
