#!/usr/bin/env xcrun swift
/// https://ideone.com/tkJuK4
/// https://pl.spoj.com/problems/BFN1/

import Foundation

var r = [String]()
var c = [Int]()
let n = Int(readLine()!)!

for _ in 1...n {
    var p = readLine()!
    var q = String(p.reversed())
    var i = 0
    while p != q {
        p = String(Int(p)! + Int(q)!)
        q = String(p.reversed())
        i += 1
    }
    r.append(p)
    c.append(i)
}

(0..<n).forEach { print(r[$0], c[$0]) }
