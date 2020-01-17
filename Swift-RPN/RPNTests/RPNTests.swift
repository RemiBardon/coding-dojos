//
//  RPNTests.swift
//  RPNTests
//
//  Created by BARDON Rémi on 17/01/2020.
//  Copyright © 2020 BARDON Rémi. All rights reserved.
//

import XCTest
@testable import RPN

public class RPNTests: XCTestCase {

    private let rpn = RPN()
	
	// Properties to save the test cases
    private var input: String = ""
    private var expectedResult: Int = -1

    // This makes the magic: defaultTestSuite has the set of all the test methods in the current runtime
    // so here we will create objects of RPNTests to call all the class' tests methods
    // with differents values to test
    override open class var defaultTestSuite: XCTestSuite {
        let testSuite = XCTestSuite(name: NSStringFromClass(self))
		addTests("20 5 /", expectedResult: 4, toTestSuite: testSuite)
		addTests("15 3 /", expectedResult: 5, toTestSuite: testSuite)
		addTests("15 3 +", expectedResult: 18, toTestSuite: testSuite)
		addTests("20 5 -", expectedResult: 15, toTestSuite: testSuite)
        return testSuite
    }

    // This is just to create the new RPNTests instance to add it into testSuite
    private class func addTests(_ input: String, expectedResult: Int, toTestSuite testSuite: XCTestSuite) {
        testInvocations.forEach { invocation in
            let testCase = RPNTests(invocation: invocation)
            testCase.input = input
            testCase.expectedResult = expectedResult
            testSuite.addTest(testCase)
        }
    }

    public func testCompute() {
        XCTAssertEqual(rpn.compute(input), expectedResult)
    }

}
