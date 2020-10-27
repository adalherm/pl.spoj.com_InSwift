#!/usr/bin/env xcrun swift
/// https://ideone.com/lXlHcS
/// https://pl.spoj.com/problems/ETI06F1/

import Foundation

let t: [Double] = readLine()!
    .split(separator: " ")
    .map { Double($0)! }
print(Double.pi * (t[0] * t[0] - t[1] * t[1] / 4.0))
