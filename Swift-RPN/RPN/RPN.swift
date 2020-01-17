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
		guard let operatorIndex = sequence.firstIndex(where: { ["/","+","-","*"].contains($0) }) else {
			fatalError("No operator.")
		}
		
		let op = sequence[operatorIndex]
		let e1 = Int(sequence[operatorIndex-2])!
		let e2 = Int(sequence[operatorIndex-1])!
		
		sequence.removeSubrange(operatorIndex-2...operatorIndex)
		
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
			sequence.insert(String(result), at: operatorIndex-2)
			return compute(&sequence)
		}
	}
	
}
