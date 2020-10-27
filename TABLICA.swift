#!/usr/bin/env xcrun swift
/// https://ideone.com/te0nz5
/// https://pl.spoj.com/problems/TABLICA/

import Foundation

for k in (readLine()!
            .split(separator: " ")
            .map { Int($0)! }
            .reversed()) {
    print(k, terminator: " ")
}
