#!/usr/bin/env xcrun swift
/// https://ideone.com/VySiQ7
/// https://pl.spoj.com/problems/WWO_01_16/

import Foundation

let c = Float(readLine()!)!
let t: Array<Float> = readLine()!.split(separator: " ").map { Float($0)! }

let av = t.reduce(0, +) / c
let lt = t.filter { $0 <= av }.max()!
let tr = t.filter { $0 >= av }.min()!

print(Int(av - lt >= tr - av ? tr : lt))
