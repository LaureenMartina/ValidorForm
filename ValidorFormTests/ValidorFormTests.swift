//
//  ValidorFormTests.swift
//  ValidorFormTests
//
//  Created by Méryl VALIER on 05/02/2019.
//  Copyright © 2019 Dinoboros. All rights reserved.
//

import XCTest
@testable import ValidorForm

class ValidorFormTests: XCTestCase {

    /*func testCheckPasswordSimple() {
        XCTAssert(Bool.checkPassword(with: "azerty", minLength: 6, maxLength: 12))
    }

    func testCheckPasswordSpecialCharacters() {
        XCTAssert(Bool.checkPassword(with: "azerty_", minLength: 6, maxLength: 12, specialCharacters: true))
    }*/
    
    let param = Parameters(minLength: 4, maxLength: 12, withSpecialCharacters: false, withUppercase: false, withNumbers: false)
    
    func testCheckPasswordComplex() {
        XCTAssertEqual(Bool.checkPassword(password: "azerty"), false)
        XCTAssertEqual(Bool.checkPassword(password: "azerty", parameters: param), true)
    }

    func testCheckValidPhoneNumber() {
        XCTAssert(Bool.checkphoneNumber(with: "0654789653", minLength: 10,  maxLength: 10))
    }
    
    func testCheckAgeSimple(){
        XCTAssert(Bool.checkAge(with: "12"))
    }
    
    func testCheckBoundsAge(){
        XCTAssert(Bool.checkAge(with: "25", min: 10, max: 999))
    }
}
