//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

extension Bool: ValidorForm {
    static func checkAge(with age: String) -> Bool {
        if Int(age) != nil{
            return true
        }
        else {
            return false
        }
    }
    
    static func checkAge(with age: String, min: Int, max: Int) -> Bool {
        if Int(age) != nil && Int(age)! > min && Int(age)! < max{
            return true
        }
        else {
            return false
        }
    }
    
    
    static func checkPassword(with password: String, minLength: Int, maxLength: Int) -> Bool {
        guard password != nil else { return false }
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^.{\(minLength),\(maxLength)}$")
        
        return passwordTest.evaluate(with: password)
    }
    
    static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool) -> Bool {
        guard password != nil else { return false }
        var passwordTest = NSPredicate()
        
        if specialCharacters {
            passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[_!@#$&*]).{\(minLength),\(maxLength)}$")
        } else {
            passwordTest = NSPredicate(format: "SELF MATCHES %@", "^.{\(minLength),\(maxLength)}$")
        }
        
        return passwordTest.evaluate(with: password)
    }

}


