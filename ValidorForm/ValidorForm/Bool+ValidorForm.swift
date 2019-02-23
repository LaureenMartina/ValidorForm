//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

extension Bool: ValidorForm {
    
    public static func checkPassword(with password: String, minLength: Int, maxLength: Int) -> Bool {
        guard password != nil else { return false }
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^.{\(minLength),\(maxLength)}$")
        
        return passwordTest.evaluate(with: password)
    }
    
    public static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool) -> Bool {
        guard password != nil else { return false }
        var passwordTest = NSPredicate()
        
        if specialCharacters {
            passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[_!@#$&*]).{\(minLength),\(maxLength)}$")
        } else {
            passwordTest = NSPredicate(format: "SELF MATCHES %@", "^.{\(minLength),\(maxLength)}$")
        }
        
        return passwordTest.evaluate(with: password)
    }
    
    public static func checkphoneNumber(with phonenumber: String, minLength: Int, maxLength: Int) -> Bool {
        guard phonenumber != nil else { return false }
        
        let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", "^[7-9][0-9]{9}$")
    
        return phoneNumberTest.evaluate(with: phonenumber)
    }
}


