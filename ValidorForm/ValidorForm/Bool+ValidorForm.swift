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
    
    static func checkEmail(with email: String?) -> Bool {
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
}


