//
//  main.swift
//  bats
//
//  Created by Alexandre Cassagne on 11/07/2018.
//  Copyright © 2018 Alexandre Cassagne. All rights reserved.
//

import Foundation

extension UInt8 {
	var char: Character {
		return Character(UnicodeScalar(self))
	}
}

if (CommandLine.argc == 1) {
	print("Usage: bats [12 23 3...]")
	exit(1)
}

let args = CommandLine.arguments[1...].map { (s: String) -> Character in
	var processed = s
	processed = processed.replacingOccurrences(of: ",", with: "")
	processed = processed.replacingOccurrences(of: "[", with: "")
	processed = processed.replacingOccurrences(of: "]", with: "")
	guard let val = UInt8(processed) else {
		print("Could not interpret \(s) as an ascii value. Ensure it is between 0 and 255.")
		exit(1)
	}
	return val.char
}

for char in args {
	print(char, terminator: "")
}
