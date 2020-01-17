//
//  main.swift
//  FooBarQix
//
//  Created by BARDON Rémi on 14/01/2020.
//

import Foundation

let fooBarQix = FooBarQix()

let values = [
	"42",
	"982097630508739",
	"982097630508740",
	"982097630508741",
	"982097630508742",
	"982097630508743"
]

for value in values {
	print("FooBarQix for \(value): \(fooBarQix.compute(value))");
}

