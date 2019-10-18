//
//  FizBuzz.swift
//  TDD-Swift
//
//  Created by BARDON Rémi on 18/10/2019.
//  Copyright © 2019 Rémi Bardon. All rights reserved.
//

import Foundation

public class FizBuzz {
	
	public func resultat(pour nombre: Int) -> String {
		var resultat = ""
		
		if nombre.estMultiple(de: 3) {
			resultat += "fiz"
		}
		if nombre.estMultiple(de: 5)  {
			resultat += "buzz"
		}
		if resultat == "" {
			resultat = String(nombre)
		}
		
		return resultat
	}
	
}

fileprivate extension Int {
	
	func estMultiple(de diviseur: Int) -> Bool {
		return self % diviseur == 0
	}
	
}
