//
//  ValidorForm.swift
//  ValidorForm
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import Foundation

public struct Parameters {
    public var minLength: Int?
    public var maxLength: Int?
    public var withSpecialCharacters: Bool
    public var withUppercase: Bool
    public var withNumbers: Bool
    
    public init(minLength: Int? = nil, maxLength: Int? = nil, withSpecialCharacters: Bool = false, withUppercase: Bool = false, withNumbers: Bool = false) {
        self.maxLength = maxLength
        self.minLength = minLength
        self.withUppercase = withUppercase
        self.withSpecialCharacters = withSpecialCharacters
        self.withNumbers = withNumbers
    }
}

public protocol ValidorForm {

    static func checkPassword(password: String) -> Self
    static func checkPassword(password: String, parameters: Parameters) -> Self
    
    static func checkphoneNumber(with phonenumber: String, minLength: Int, maxLength: Int) -> Self
    
    static func checkAge(with age: String) -> Self
    static func checkAge(with age: String, min: Int, max: Int) -> Self
    
    static func checkEmail(with email: String?) -> Self
    
    static func checkDate(with date: String) -> Self
}
