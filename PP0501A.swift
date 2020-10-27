#!/usr/bin/env xcrun swift
/// https://ideone.com/DpIf6B
/// https://pl.spoj.com/problems/PP0501A/

import Foundation

/// FUNCTION VERSION <1> by tuples
func nwd(_ m: Int, _ n: Int) -> Int {
    var (a, b) = (m, n)
    while b != 0 {
        (a, b) = (b, a % b)
    }
    return a
}

/// FUNCTION VERSION <2> as recurrency
/*
func nwd(_ a: Int, _ b: Int) -> Int { return b == 0 ? a : nwd(b, a % b) }
*/

/// FUNCTION VERSION <3> for Swift 5.3
/*
let nwd :(Int, Int) -> Int = {
    sequence(first: ($0, $1), next: {
        $0.1 != 0 ? ($0.1, $0.0 % $0.1) : nil
    }).suffix(1).first!.0
}
*/

/// FUNCTION VERSION <3> for Swift 4.2.2
/*
let nwd :(Int, Int) -> Int = {
    Array<(Int,Int)>(
        sequence(
            first: ($0, $1), next: {
                $0.1 != 0 ? ($0.1, $0.0 % $0.1) : nil
            }
        )
    .suffix(1)).first!.0
}
*/

var r = [Int]()
let k = Int(readLine()!)!

for _ in 1...k {
    let t = readLine()!.split(separator: " ").map { Int($0)! }
    r.append(nwd(t[0], t[1]))
}

(0..<k).forEach { print(r[$0]) }
