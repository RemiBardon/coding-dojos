//
//  FizBuzz.swift
//  TDD-Swift
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import Foundation

class FizBuzz {
	
	private(set) public var resultat: String = ""
	
	init(_ nombre: Int) {
		let estMultipleDe3 = nombre % 3 == 0
		let estMultipleDe5 = nombre % 5 == 0
		
		if estMultipleDe3 || estMultipleDe5 {
			if estMultipleDe3 {
				resultat += "fiz"
			}
			if estMultipleDe5 {
				resultat += "buzz"
			}
		} else {
			resultat += String(nombre)
		}
	}
	
}
