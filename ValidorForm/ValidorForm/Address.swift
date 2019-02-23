//
//  Address.swift
//  ValidorForm
//
//  Created by Prescilla Lecurieux on 07/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

struct Address {
    public let number: String?
    public let street: String?
    public let zipCode: String?
    public let country: String?
}

extension Address: CustomStringConvertible {
    var description: String {
        return "\(self.number ?? "") \(self.street ?? "") \(self.zipCode ?? "") \(self.country ?? "")"
    }
    
}
