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
		let sequence = string.split(separator: " ")
		return Int(String(sequence[0]))! / Int(String(sequence[1]))!
	}
	
}
