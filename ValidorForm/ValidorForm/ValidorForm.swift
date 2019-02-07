//
//  ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

protocol ValidorForm {
//    static func checkPassword(with password: String) -> Self
    static func checkPassword(with password: String, minLength: Int, maxLength: Int) -> Self
//    static func checkPassword(minLength: Int, maxLength: Int, specialCharacters: Bool) -> Self
    static func checkEmail(with email: String?) -> Self
    
    static func checkDate(with date: String) -> Self
}
