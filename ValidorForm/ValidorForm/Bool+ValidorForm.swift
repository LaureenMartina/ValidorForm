//
//  Bool+ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation
import MapKit

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
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", regEx)
        return emailTest.evaluate(with: email)
    }
    
    static func checkDate(with dateString: String) -> Bool {
        
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
    
    static func checkAddress(with num: String, street: String, code: String, country:String ) -> Bool {
        
        let address = Address(
            number: num,
            street: street,
            zipCode: code,
            country: country
        )
        
        var bool = false
        
        CLGeocoder().geocodeAddressString(address.description) { (p, err) in
            bool = true
        }
        
        return bool
    }
}


