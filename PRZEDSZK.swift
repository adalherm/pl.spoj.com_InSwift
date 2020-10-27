#!/usr/bin/env xcrun swift
/// https://ideone.com/U6mcLW
/// https://pl.spoj.com/problems/PRZEDSZK/

import Foundation

let n = Int(readLine()!)!
var r = [Int]()

for _ in 1...n {
    let t = readLine()!.split(separator: " ").map { Int($0)! }
    
    var v = t[0]
    var w = t[1]
    
    while v != w {
        if v < w {
            v += t[0]
        } else {
            w += t[1]
        }
    }
    r.append(w)
}

(0..<n).forEach { print(r[$0]) }
