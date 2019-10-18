//
//  TDD_Swift_Test.swift
//  TDD-Swift-Test
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import XCTest

class TDD_Swift_Test: XCTestCase {

	let fizzBuzz = FizzBuzz()
	
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_fizzbuzz_random() {
		var valeurTestee = 0
		while valeurTestee % 3 == 0 || valeurTestee % 5 == 0 {
			valeurTestee = Int.random(in: 1...Int.max)
		}
		let resultat = fizzBuzz.resultat(pour: valeurTestee)
        XCTAssertEqual(resultat, String(valeurTestee))
    }

    func test_fizzbuzz_multiple_3() {
		let valeurTestee = Int.random(in: 1...Int.max/3) * 3
		let resultat = fizzBuzz.resultat(pour: valeurTestee)
		XCTAssertTrue(resultat.hasPrefix("Fizz"))
    }
	
	func test_fizzbuzz_multiple_5() {
		let valeurTestee = Int.random(in: 1...Int.max/5) * 5
		let resultat = fizzBuzz.resultat(pour: valeurTestee)
		XCTAssertTrue(resultat.hasSuffix("Buzz"))
    }
	
	func test_fizzbuzz_multiple_3_et_5() {
		let valeurTestee = Int.random(in: 1...Int.max/15) * 15
		let resultat = fizzBuzz.resultat(pour: valeurTestee)
        XCTAssertEqual(resultat, "FizzBuzz")
    }

    func test_fizzbuzz_0_ne_renvoie_rien() {
		let resultat = fizzBuzz.resultat(pour: 0)
        XCTAssertEqual(resultat, "")
    }

    func test_fizzbuzz_negatif_ne_renvoie_rien() {
		let valeurTestee = Int.random(in: Int.min..<0)
		let resultat = fizzBuzz.resultat(pour: valeurTestee)
        XCTAssertEqual(resultat, "")
    }
	
    func test_fizzbuzz_liste_jusqua_36() {
		let resultat = fizzBuzz.liste(jusqua: 36)
		let attendu = [ "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz", "Fizz", "22", "23", "Fizz", "Buzz", "26", "Fizz", "28", "29", "FizzBuzz", "31", "32", "Fizz", "34", "Buzz", "Fizz" ]
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_jusqua_0() {
		let resultat = fizzBuzz.liste(jusqua: 0)
		let attendu: [String] = []
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_jusqua_nombre_negatif() {
		let valeurTestee = Int.random(in: Int.min..<0)
		let resultat = fizzBuzz.liste(jusqua: valeurTestee)
		let attendu: [String] = []
        XCTAssertEqual(resultat, attendu)
    }
	
    func test_fizzbuzz_liste_random() {
		let valeurTestee = Int.random(in: 1...100)
		let resultat = fizzBuzz.liste(jusqua: valeurTestee)
		for _ in 0..<10 {
			let indexTeste = Int.random(in: 1...valeurTestee)
			let attendu: String = fizzBuzz.resultat(pour: indexTeste)
			XCTAssertEqual(resultat[indexTeste-1], attendu)
		}
    }

}
