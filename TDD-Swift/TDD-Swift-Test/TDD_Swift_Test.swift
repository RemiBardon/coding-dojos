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

    func test_fizzbuzz_1_renvoie_1() {
		let resultat = FizzBuzz().resultat(pour: 1)
        XCTAssertEqual(resultat, "1")
    }

    func test_fizzbuzz_2_renvoie_2() {
		let resultat = FizzBuzz().resultat(pour: 2)
        XCTAssertEqual(resultat, "2")
    }

    func test_fizzbuzz_3_renvoie_fiz() {
		let resultat = FizzBuzz().resultat(pour: 3)
        XCTAssertEqual(resultat, "Fizz")
    }

    func test_fizzbuzz_5_renvoie_buzz() {
		let resultat = FizzBuzz().resultat(pour: 5)
        XCTAssertEqual(resultat, "Buzz")
    }

    func test_fizzbuzz_6_renvoie_fiz() {
		let resultat = FizzBuzz().resultat(pour: 6)
        XCTAssertEqual(resultat, "Fizz")
    }

    func test_fizzbuzz_10_renvoie_buzz() {
		let resultat = FizzBuzz().resultat(pour: 10)
        XCTAssertEqual(resultat, "Buzz")
    }

    func test_fizzbuzz_15_renvoie_fizbuzz() {
		let resultat = FizzBuzz().resultat(pour: 15)
        XCTAssertEqual(resultat, "FizzBuzz")
    }

    func test_fizzbuzz_45_renvoie_fizbuzz() {
		let resultat = FizzBuzz().resultat(pour: 45)
        XCTAssertEqual(resultat, "FizzBuzz")
    }
	
    func test_fizzbuzz_liste_jusqua_1() {
		let resultat = FizzBuzz().liste(jusqua: 1)
		let attendu = [ "1" ]
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_jusqua_2() {
		let resultat = FizzBuzz().liste(jusqua: 2)
		let attendu = [ "1", "2" ]
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_jusqua_3() {
		let resultat = FizzBuzz().liste(jusqua: 3)
		let attendu = [ "1", "2", "Fizz" ]
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_jusqua_5() {
		let resultat = FizzBuzz().liste(jusqua: 5)
		let attendu = [ "1", "2", "Fizz", "4", "Buzz" ]
        XCTAssertEqual(resultat, attendu)
    }

}
