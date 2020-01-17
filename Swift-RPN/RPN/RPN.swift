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
		let sequence = string.split(separator: " ").map { String($0) }
		
		let op = sequence[2]
		let e1 = Int(sequence[0])!
		let e2 = Int(sequence[1])!
		
		switch op {
		case "/":
			return e1 / e2
		case "+":
			return e1 + e2
		case "-":
			return e1 - e2
		case "*":
			return e1 * e2
		default:
			fatalError("Invalid operator.")
		}
	}
	
}
