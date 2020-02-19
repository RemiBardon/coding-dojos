//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by BARDON Rémi on 19/02/2020.
//  Copyright © 2020 BARDON Rémi. All rights reserved.
//

import XCTest
@testable import StringCalculator

class StringCalculatorTests: XCTestCase {

	let calculator = StringCalculator()
	
	// Properties to save the test cases
    private var input: String = ""
    private var expectedResult: String = ""
	
	// This makes the magic: defaultTestSuite has the set of all the test methods in the current runtime
    // so here we will create objects of StringCalculatorTests to call all the class' tests methods
    // with differents values to test
    override open class var defaultTestSuite: XCTestSuite {
        let testSuite = XCTestSuite(name: NSStringFromClass(self))
		addTests("", expectedResult: "0", toTestSuite: testSuite)
        return testSuite
    }
	
	// This is just to create the new StringCalculatorTests instance to add it into testSuite
    private class func addTests(_ input: String, expectedResult: String, toTestSuite testSuite: XCTestSuite) {
        testInvocations.forEach { invocation in
            let testCase = StringCalculatorTests(invocation: invocation)
            testCase.input = input
            testCase.expectedResult = expectedResult
            testSuite.addTest(testCase)
        }
    }

    public func testCompute() {
        XCTAssertEqual(calculator.add(input), expectedResult)
    }

}
