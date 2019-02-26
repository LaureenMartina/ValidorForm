//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

extension Bool: ValidorForm {
    
    public static func checkEmail(with email: String?) -> Bool {
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
    
    public static func checkDate(with dateString: String) -> Bool {
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "DD-MM-YYYY"
        
        if let _ = dateFormatterGet.date(from: dateString) {
            return true
        } else {
            dateFormatterGet.dateFormat = "DD/MM/YYYY"
            if let _ = dateFormatterGet.date(from: dateString) {
                return true
            } else {
                dateFormatterGet.dateFormat = "YYYY-MM-DD"
                if let _ = dateFormatterGet.date(from: dateString) {
                    return true
                } else {
                    dateFormatterGet.dateFormat = "YYYY/MM/DD"
                    if let _ = dateFormatterGet.date(from: dateString) {
                        return true
                    } else {
                        dateFormatterGet.dateFormat = "DD/MM/YY"
                        if let _ = dateFormatterGet.date(from: dateString) {
                            return true
                        } else {
                            dateFormatterGet.dateFormat = "DD-MM-YY"
                            if let _ = dateFormatterGet.date(from: dateString) {
                                return true
                            } else {
                                dateFormatterGet.dateFormat = "YY/MM/DD"
                                if let _ = dateFormatterGet.date(from: dateString) {
                                    return true
                                } else {
                                    dateFormatterGet.dateFormat = "YY-MM-DD"
                                    if let _ = dateFormatterGet.date(from: dateString) {
                                        return true
                                    } else {
                                        return false
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    public static func checkAge(with age: String) -> Bool {
        if Int(age) != nil{
            return true
        }
        else {
            return false
        }
    }
    
    public static func checkAge(with age: String, min: Int, max: Int) -> Bool {
        if Int(age) != nil && Int(age)! > min && Int(age)! < max{
            return true
        }
        else {
            return false
        }
    }
    
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
    
    public static func checkphoneNumber(with phonenumber: String, minLength: Int, maxLength: Int) -> Bool {
        guard phonenumber != nil else { return false }
        
        let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", "^[7-9][0-9]{9}$")
        let result = phoneNumberTest.evaluate(with: phonenumber)
        return result
    }
}


