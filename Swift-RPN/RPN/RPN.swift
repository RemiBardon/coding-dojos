//
//  RPN.swift
//  RPN
//
//  Created by BARDON Rémi on 17/01/2020.
//  Copyright © 2020 BARDON Rémi. All rights reserved.
//

import Foundation

public class RPN {
	
	public func compute(_ string: String) -> Int {
		var sequence = string.split(separator: " ").map { String($0) }
		return compute(&sequence)
	}
	
	private func compute(_ sequence: inout [String]) -> Int {
		let op = sequence[2]
		let e1 = Int(sequence[0])!
		let e2 = Int(sequence[1])!
		
		sequence.removeFirst(3)
		
		let result: Int
		switch op {
		case "/":
			result = e1 / e2
		case "+":
			result = e1 + e2
		case "-":
			result = e1 - e2
		case "*":
			result = e1 * e2
		default:
			fatalError("Invalid operator.")
		}
		
		if sequence.isEmpty {
			return result
		} else {
			sequence.insert(String(result), at: 0)
			return compute(&sequence)
		}
	}
	
}
