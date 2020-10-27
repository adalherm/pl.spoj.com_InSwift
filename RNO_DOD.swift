#!/usr/bin/env xcrun swift
/// https://ideone.com/TliO1C
/// https://pl.spoj.com/problems/RNO_DOD/

import Foundation

let n = Int(readLine()!)!
var r = [Int]()

for _ in 1...n {
    _ = readLine()
    
    r.append(readLine()!
                .split(separator: " ")
                .map { Int($0)! }
                .reduce(0,+))
}

(0..<n).forEach { print(r[$0]) }
