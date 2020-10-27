#!/usr/bin/env xcrun swift
/// https://ideone.com/3ufYh0
/// https://pl.spoj.com/problems/ROWNANIE/

import Foundation

var r = [Int]()

while let t = readLine(), t != "" {
    let c = t.split(separator: " ").map { Double($0)! }
    let k = 4 * c[0] * c[2] - c[1] * c[1]
    switch k {
    case _ where k >  0 : r.append(0)
    case _ where k == 0 : r.append(1)
    case _ where k <  0 : r.append(2)
    default : ()
    }
}

for i in r {
    print(i)
}
