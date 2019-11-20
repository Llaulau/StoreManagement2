//
//  ProviderTableViewCell.swift
//  StoreManagement
//
//  Created by ifage-user on 18.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import UIKit

class ProviderTableViewCell: UITableViewCell {
    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var telephone: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
