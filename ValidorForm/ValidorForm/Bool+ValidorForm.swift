//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

extension Bool: ValidorForm {
    static func checkPassword(password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[a-z])$")
        print(passwordTest.evaluate(with: password))
        return passwordTest.evaluate(with: password)
    }
    
    static func checkPassword(password: String, parameters: Parameters) -> Bool {
        var passwordTest = NSPredicate()
        var regex = "^(?=.*[a-z])"
        
        if parameters.withSpecialCharacters {
            regex.append("(?=.*[_+/\\!@#$&*])")
        }
        
        if parameters.withUppercase {
            regex.append("(?=.*[A-Z])")
        }
        
        if parameters.withNumbers {
            regex.append("(?=.*[0-9])")
        }
        
        if parameters.minLength != nil {
            regex.append(".{\(parameters.minLength!),}")
        } else if parameters.minLength != nil && parameters.maxLength != nil {
            regex.append(".{\(parameters.minLength!),\(parameters.maxLength!)}")
        }
        
        print(regex)
        
        passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
        print(passwordTest.evaluate(with: password))
        
        return passwordTest.evaluate(with: password)
    }
}
