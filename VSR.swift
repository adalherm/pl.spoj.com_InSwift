#!/usr/bin/env xcrun swift
/// https://ideone.com/WVmRBw
/// https://pl.spoj.com/problems/VSR/

import Foundation

var r = [Int]()

let n = Int(readLine()!)!

for _ in 1...n {
    let v = readLine()!
        .split(separator: " ")
        .map { Int($0)! }
    r.append(2 * v[0] * v[1] / (v[0] + v[1]))
}

(0..<n).forEach { print(r[$0]) }
