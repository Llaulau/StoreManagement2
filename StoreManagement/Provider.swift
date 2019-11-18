//
//  Provider.swift
//  StoreManagement
//
//  Created by ifage-user on 13.11.19.
//  Copyright © 2019 ifage-user. All rights reserved.
//

import Foundation

class Provider {
    var companyName: String!
    var email: String
    var address: String
    var telephone: String
    
    init(company companyName: String, email: String, address: String, telephone: String) {
        self.companyName = companyName
        self.email = email
        self.address = address
        self.telephone = telephone
    
    }

}
