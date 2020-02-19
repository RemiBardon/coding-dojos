//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import Foundation

public class FizzBuzz {
	
	public func resultat(pour nombre: Int) -> String {
		guard nombre > 0 else { return "" }
		
		switch (nombre.estMultiple(de: 3), nombre.estMultiple(de: 5)) {
		case (true, true):
			return "FizzBuzz"
		case (true, false):
			return "Fizz"
		case (false, true):
			return "Buzz"
		case (false, false):
			return String(nombre)
		}
	}
	
	public func liste(jusqua nombre: Int) -> [String] {
		var res: [String] = []
		
		guard nombre > 0 else { return res }
		
		for n in 1...nombre {
			res.append(resultat(pour: n))
		}
		
		return res
	}
	
}

fileprivate extension Int {
	
	func estMultiple(de diviseur: Int) -> Bool {
		return self % diviseur == 0
	}
	
}
