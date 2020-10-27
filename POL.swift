#!/usr/bin/env xcrun swift
/// https://ideone.com/qf9ebw
/// https://pl.spoj.com/problems/POL/

import Foundation

var h = [String]()

let n = Int(readLine()!)!

for _ in 1...n {
    let s = readLine()!
    h.append(String(s.prefix(s.count / 2)))
}

(0..<n).forEach { print(h[$0]) }
