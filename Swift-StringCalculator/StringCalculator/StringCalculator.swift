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
		guard let numbers: [Number] = {
			if input.contains(",") {
				return input.split(separator: ",").map { Number($0)! }
			} else if let number = Number(input) {
				return [number]
			}
			return nil
		}(), !numbers.isEmpty else { return "0" }
		return String(format: "%g", sum(numbers))
	}
	
	private func sum(_ sequence: [Number]) -> Number {
		var res: Number = 0
		sequence.forEach { res += $0 }
		return res
	}
	
}
