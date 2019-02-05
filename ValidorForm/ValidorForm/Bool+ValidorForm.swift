//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

extension Bool: ValidorForm {
//    static func checkPassword(with password: String) -> Bool {
//        guard let password != nil else { return false }
//        return true
//    }
    
    static func checkPassword(with password: String, minLength: Int, maxLength: Int) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^.{\(minLength),\(maxLength)}$")
        return passwordTest.evaluate(with: password)
    }
}


