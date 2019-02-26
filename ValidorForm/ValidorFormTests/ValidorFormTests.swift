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

<<<<<<< HEAD
    func testCheckPassword() {
        XCTAssert(Bool.checkPassword(with: "azerty", minLength: 6, maxLength: 12))
    }
    
    func testCheckEmail() {
        XCTAssert(Bool.checkEmail(with: "abc@def.fr"))
    }
    
    func testCheckDate() {
        XCTAssert(Bool.checkDate(with: "01/12/1992"))
        XCTAssert(Bool.checkDate(with: "01-12-1992"))
        XCTAssert(Bool.checkDate(with: "01/12/92"))
        XCTAssert(Bool.checkDate(with: "01-12-92"))
        XCTAssert(Bool.checkDate(with: "1992/12/01"))
        XCTAssert(Bool.checkDate(with: "1992-12-01"))
        XCTAssert(Bool.checkDate(with: "92-12-01"))
        XCTAssert(Bool.checkDate(with: "92/12/01"))
=======
    let param = Parameters(minLength: nil, maxLength: nil, withSpecialCharacters: false, withUppercase: false, withNumbers: false)
    
    func testCheckPasswordComplex() {
        XCTAssert(Bool.checkPassword(password: "azerty"))
        XCTAssertEqual(Bool.checkPassword(password: "azerty", parameters: param), false)
>>>>>>> feature/verif_password
    }

}
