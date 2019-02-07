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

    let param = Parameters(minLength: nil, maxLength: nil, withSpecialCharacters: false, withUppercase: false, withNumbers: false)
    
    func testCheckPasswordComplex() {
        XCTAssert(Bool.checkPassword(password: "azerty"))
        XCTAssertEqual(Bool.checkPassword(password: "azerty", parameters: param), false)
    }
}
