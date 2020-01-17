//
//  FooBarQixTests.swift
//  FooBarQixTests
//
//  Created by BARDON Rémi on 14/01/2020.
//

import XCTest
@testable import FooBarQix

class FooBarQixTests: XCTestCase {

	let fooBarQix = FooBarQix()
	
	// Properties to save the test cases
    private var input: String = ""
    private var expectedResult: String = ""

    // This makes the magic: defaultTestSuite has the set of all the test methods in the current runtime
    // so here we will create objects of FooBarQixTests to call all the class' tests methodos
    // with differents values to test
    override open class var defaultTestSuite: XCTestSuite {
        let testSuite = XCTestSuite(name: NSStringFromClass(self))
		addTests("1", 		expectedResult: "1", 					toTestSuite: testSuite)
		addTests("2", 		expectedResult: "2", 					toTestSuite: testSuite)
		addTests("3", 		expectedResult: "FooFoo",				toTestSuite: testSuite)
		addTests("5", 		expectedResult: "BarBar", 				toTestSuite: testSuite)
		addTests("6", 		expectedResult: "Foo", 					toTestSuite: testSuite)
		addTests("7", 		expectedResult: "QixQix", 				toTestSuite: testSuite)
		addTests("15", 		expectedResult: "FooBarBar", 			toTestSuite: testSuite)
		addTests("21", 		expectedResult: "FooQix", 				toTestSuite: testSuite)
		addTests("33", 		expectedResult: "FooFooFoo", 			toTestSuite: testSuite)
		addTests("51", 		expectedResult: "FooBar", 				toTestSuite: testSuite)
		addTests("53", 		expectedResult: "BarFoo", 				toTestSuite: testSuite)
		addTests("101", 	expectedResult: "1*1", 					toTestSuite: testSuite)
		addTests("303", 	expectedResult: "FooFoo*Foo", 			toTestSuite: testSuite)
		addTests("105", 	expectedResult: "FooBarQix*Bar", 		toTestSuite: testSuite)
		addTests("10101", 	expectedResult: "FooQix**", 			toTestSuite: testSuite)
		addTests("10702", 	expectedResult: "1*Qix*2", 				toTestSuite: testSuite)
		addTests("10102", 	expectedResult: "1*1*2", 				toTestSuite: testSuite)
        return testSuite
    }

    // This is just to create the new FooBarQixTests instance to add it into testSuite
    private class func addTests(_ input: String, expectedResult: String, toTestSuite testSuite: XCTestSuite) {
        testInvocations.forEach { invocation in
            let testCase = FooBarQixTests(invocation: invocation)
            testCase.input = input
            testCase.expectedResult = expectedResult
            testSuite.addTest(testCase)
        }
    }

    func testCompute() {
        XCTAssertEqual(fooBarQix.compute(input), expectedResult)
    }

}
