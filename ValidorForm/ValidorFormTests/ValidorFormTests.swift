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

    func testCheckPasswordSimple() {
        XCTAssert(Bool.checkPassword(with: "azerty", minLength: 6, maxLength: 12))
    }

    func testCheckPasswordSpecialCharacters() {
        XCTAssert(Bool.checkPassword(with: "azerty_", minLength: 6, maxLength: 12, specialCharacters: true))
    }
    
    func testCheckAgeSimple(){
        XCTAssert(Bool.checkAge(with: "12"))
    }
    
    func testCheckBoundsAge(){
        XCTAssert(Bool.checkAge(with: "25", min: 10, max: 999))
    }
}
