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
    
//    static func checkPassword(with password: String, minLength: Int) -> Self
//    static func checkPassword(with password: String, maxLength: Int) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, uppercase: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, numbers: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool, uppercase: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool, numbers: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, uppercase: Bool, numbers: Bool) -> Self
//    static func checkPassword(with password: String, minLength: Int, maxLength: Int, specialCharacters: Bool, uppercase: Bool, numbers: Bool) -> Self
}
