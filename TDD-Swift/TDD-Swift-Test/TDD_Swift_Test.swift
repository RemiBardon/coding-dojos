//
//  TDD_Swift_Test.swift
//  TDD-Swift-Test
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import XCTest

class TDD_Swift_Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_fizbuzz_1_renvoie_1() {
		let resultat = FizBuzz(1).resultat
        XCTAssertEqual(resultat, "1")
    }

    func test_fizbuzz_2_renvoie_2() {
		let resultat = FizBuzz(2).resultat
        XCTAssertEqual(resultat, "2")
    }

    func test_fizbuzz_3_renvoie_fiz() {
		let resultat = FizBuzz(3).resultat
        XCTAssertEqual(resultat, "fiz")
    }

    func test_fizbuzz_5_renvoie_buzz() {
		let resultat = FizBuzz(5).resultat
        XCTAssertEqual(resultat, "buzz")
    }

    func test_fizbuzz_6_renvoie_fiz() {
		let resultat = FizBuzz(6).resultat
        XCTAssertEqual(resultat, "fiz")
    }

    func test_fizbuzz_10_renvoie_buzz() {
		let resultat = FizBuzz(10).resultat
        XCTAssertEqual(resultat, "buzz")
    }

    func test_fizbuzz_15_renvoie_fizbuzz() {
		let resultat = FizBuzz(15).resultat
        XCTAssertEqual(resultat, "fizbuzz")
    }

}
