#!/usr/bin/env xcrun swift
/// https://ideone.com/dY93Ae
/// https://pl.spoj.com/problems/SUMA/

import Foundation

var t = [Int]()
while let n = Int(readLine() ?? "") {
    t.append(n + (t.last ?? 0))
}

if t == [] { print() } else {
    (0..<t.count).forEach { print(t[$0]) }
}
