//
//  ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

struct Parameters {
    var minLength: Int?
    var maxLength: Int?
    var withSpecialCharacters: Bool
    var withUppercase: Bool
    var withNumbers: Bool
}

protocol ValidorForm {

    static func checkPassword(password: String) -> Self
    static func checkPassword(password: String, parameters: Parameters) -> Self
    
    static func checkphoneNumber(with phonenumber: String, minLength: Int, maxLength: Int) -> Self
    
    static func checkAge(with age: String) -> Self
    static func checkAge(with age: String, min: Int, max: Int) -> Self
    
    static func checkEmail(with email: String?) -> Self
    
    static func checkDate(with date: String) -> Self
}
