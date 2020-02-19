//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by BARDON Rémi on 19/02/2020.
//  Copyright © 2020 BARDON Rémi. All rights reserved.
//

import Foundation

class StringCalculator {
	
	typealias Number = Double
	
	func add(numbersIn input: String) -> String {
		// Check for empty string
		guard !input.isEmpty else { return "0" }
		
		// Split values
		let numbers = input.split(whereSeparator: { [",", "\n"].contains($0) }).map { Number($0)! }
		
		// Calculate sum
		return String(format: "%g", sum(numbers))
	}
	
	private func sum(_ sequence: [Number]) -> Number {
		var res: Number = 0
		sequence.forEach { res += $0 }
		return res
	}
	
}
