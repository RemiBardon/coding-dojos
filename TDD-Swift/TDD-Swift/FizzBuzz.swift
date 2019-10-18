//
//  FizzBuzz.swift
//  TDD-Swift
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import Foundation

public class FizzBuzz {
	
	public func resultat(pour nombre: Int) -> String {
		var resultat = ""
		
		if nombre.estMultiple(de: 3) {
			resultat += "Fizz"
		}
		if nombre.estMultiple(de: 5)  {
			resultat += "Buzz"
		}
		if resultat == "" {
			resultat = String(nombre)
		}
		
		return resultat
	}
	
	public func liste(jusqua nombre: Int) -> [String] {
		var res: [String] = []
		
		guard nombre >= 1 else { return res }
		res.append("1")
		
		guard nombre >= 2 else { return res }
		res.append("2")
		
		guard nombre >= 3 else { return res }
		res.append(resultat(pour: nombre))
		
		return res
	}
	
}

fileprivate extension Int {
	
	func estMultiple(de diviseur: Int) -> Bool {
		return self % diviseur == 0
	}
	
}
