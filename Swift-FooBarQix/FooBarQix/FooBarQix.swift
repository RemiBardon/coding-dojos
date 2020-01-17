//
//  FooBarQix.swift
//  FooBarQix
//
//  Created by BARDON Rémi on 14/01/2020.
//

import Foundation

public class FooBarQix {
	
	public typealias N = UInt64
	
	public init() {}
	
	public final let rules: [(N, String)?] = {
		var rules: [(N, String)?] = Array(repeating: nil, count: 10)
		rules[3] = (3, "Foo")
		rules[5] = (5, "Bar")
		rules[7] = (7, "Qix")
		return rules
	}()
	
	public func compute(_ string: String) -> String {
		guard let number = N(string) else { fatalError("The provided string isn't a number") }
		
		var result = ""
		var isDivisible = false
		
		for rule in rules {
			if case let .some(value) = rule {
				if number % value.0 == 0 {
					result.append(value.1);
					isDivisible = true;
				}
			}
		}

		var i = number
		var digits = [N]()
		while i != 0 {
			digits.append(i%10)
			i /= 10
		}

		while !digits.isEmpty {
			guard let n = digits.popLast() else { break }
			result.append(getString(from: n, noAny: isDivisible))
		}

		return (result.isEmpty ? String(number) : result)
	}
	
	private func getString(from digit: N, noAny: Bool) -> String {
		if digit == 0 { return "*" }
		return rules[Int(digit)]?.1 ?? (noAny ? "" : String(digit))
	}
	
}
