#!/usr/bin/env xcrun swift
/// https://ideone.com/6Xil1r
/// https://pl.spoj.com/problems/PA05_POT/

import Foundation

var unitList = [Int]()

let n = Int(readLine()!)!

for _ in 1...n {
    let power = readLine()!.split(separator: " ")
    let b = Int(power[0])! % 10
    let e = Int(power[1])!
    switch b {
    case 0,1,5,6: unitList.append(b)
    case 4: unitList.append([6,4][e % 2])
    case 9: unitList.append([1,9][e % 2])
    case 2: unitList.append([6,2,4,8][e % 4])
    case 3: unitList.append([1,3,9,7][e % 4])
    case 7: unitList.append([1,7,9,3][e % 4])
    case 8: unitList.append([6,8,4,2][e % 4])
    default: ()
    }
}

for i in 0..<n {
    print(unitList[i])
}
