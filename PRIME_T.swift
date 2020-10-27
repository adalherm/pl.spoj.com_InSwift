#!/usr/bin/env xcrun swift
/// https://ideone.com/wf46Jx
/// https://pl.spoj.com/problems/PRIME_T/

import Foundation

extension Int {
    var isPrime: Bool {
        get {
                guard self > 3 else {return self > 1}
                guard self % 2 != 0, self % 3 != 0 else {return false}

                let limTest = Int(Double(self).squareRoot()) + 1
                for i in stride(from: 5, through: limTest, by: 6) {
                    if self % i == 0 || self % (i + 2) == 0 {return false}
                }
                return true
        }
    }
}

var numList = [Bool]()

let n = Int(readLine()!)!

for _ in 1...n {
    numList.append(Int(readLine()!)!.isPrime)
}

for i in 0..<n {
    print(numList[i] ? "TAK" : "NIE")
}
