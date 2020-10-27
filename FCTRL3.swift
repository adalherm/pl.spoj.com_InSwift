#!/usr/bin/env xcrun swift
/// https://ideone.com/G6YBwA
/// https://pl.spoj.com/problems/FCTRL3/

import Foundation

var result = [(Int, Int)]()

let n = Int(readLine()!)!

for _ in 1...n {
    switch Int(readLine()!)! {
    case ...1 : result.append((0,1))
    case 2    : result.append((0,2))
    case 3    : result.append((0,6))
    case 4    : result.append((2,4))
    case 5,6,8: result.append((2,0))
    case 7    : result.append((4,0))
    case 9    : result.append((8,0))
    default   : result.append((0,0))
    }
}

for i in 0..<n {
    print(result[i].0, result[i].1)
}
