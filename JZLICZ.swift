#!/usr/bin/env xcrun swift
/// https://ideone.com/7gHObW
/// https://pl.spoj.com/problems/JZLICZ/

import Foundation

let n = Int(readLine()!)!

var s = ""
for _ in 1...n { s += readLine()! }
var d = [Character : Int]()
var D = [Character : Int]()
for c in s {
    if "a"..."z" ~= c { if d[c] == nil { d[c] = 0 }; d[c]! += 1 } else {
        if "A"..."Z" ~= c { if D[c] == nil { D[c] = 0 }; D[c]! += 1 }
    }
}

for (i, v) in d.sorted(by: { $0.0 < $1.0 }) { print(i, v) }
for (i, v) in D.sorted(by: { $0.0 < $1.0 }) { print(i, v) }
