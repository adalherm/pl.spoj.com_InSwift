#!/usr/bin/env xcrun swift
/// https://ideone.com/O1Pnqq
/// https://pl.spoj.com/problems/PP0502B/

import Foundation

let n = Int(readLine()!)!
var t = [[Int]]()

for _ in 1...n {
    t.append(readLine()!
                .split(separator: " ")
                .map { Int($0)! }
                .reversed())
}

for i in 0..<n {
    t[i].removeLast()
    for k in t[i] {
        print(k, terminator: " ")
    }
    print()
}
