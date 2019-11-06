//
//  ProductsTableViewController.swift
//  StoreManagement
//
//  Created by ifage-user on 06.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    private var productList = [Product]()
    
    private func generateProducts() {
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple"))
        productList.append(Product(name: "Banana", price: 1.35, description: "Best bananas come from Ivory Coast", imageFile: "banana"))
        productList.append(Product(name: "Pineapple", price: 4.25, description: "Pineapples are generally sweet", imageFile: "pineapple"))
        /*
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        productList.append(Product(name: "Apple", price: 2.35, description: "This is my favourite fruit", imageFile: "apple.jpg"))
        */
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        generateProducts()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCellIdentifier", for: indexPath)
        
        let product = productList[indexPath.row]
        // Configure the cell...
        
        cell.textLabel?.text = product.name
        cell.detailTextLabel?.text = "\(product.price)"
        cell.imageView?.image = UIImage(named: product.imageFile)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showProductDetail",
           let destination = segue.destination as? ProductViewController,
           let position = tableView.indexPathForSelectedRow?.row
        {
            destination.selectedProduct = productList[position]
        }
    }

}
