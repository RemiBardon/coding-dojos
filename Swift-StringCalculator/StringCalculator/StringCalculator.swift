//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by BARDON Rémi on 19/02/2020.
//  Copyright © 2020 BARDON Rémi. All rights reserved.
//

import Foundation

class StringCalculator {
	
	func add(numbersIn input: String) -> String {
		guard let _ = Float(input) else { return "0" }
		
		return input
	}
	
}
