#!/usr/bin/env xcrun swift
/// https://ideone.com/6tTiqC
/// https://pl.spoj.com/problems/CALC/

import Foundation

var r = [Int32]()

while let ln = readLine()?
        .split(separator: " "),
      ln != [] {
    
    let m = Int32(ln[1])!
    let n = Int32(ln[2])!
    
    switch ln[0] {
    case "+" : r.append(m + n)
    case "-" : r.append(m - n)
    case "*" : r.append(m * n)
    case "/" : r.append(m / n)
    case "%" : r.append(m % n)
    default : ()
    }
}

if r == [] {
    print("")
} else {
    for i in r {
        print(i)
    }
}
