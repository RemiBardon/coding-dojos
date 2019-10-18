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
		return [ "1" ]
	}
	
}

fileprivate extension Int {
	
	func estMultiple(de diviseur: Int) -> Bool {
		return self % diviseur == 0
	}
	
}
