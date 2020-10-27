#!/usr/bin/env xcrun swift
/// https://ideone.com/PnnYio
/// https://pl.spoj.com/problems/GLUTTON/

import Foundation

let day = 86400

var boxes = [Int]()

struct Tournament {
    var gluttons = Int()
    var cookies = Int()
    var times = [Int]()
    
    init() {
        cookies = (readLine()?
                    .split(separator: " ")
                    .map { Int($0)! }
                    .reduce(0) {
                        gluttons = $0!
                        return $1
                    })!
        for _ in 0..<gluttons {
            times.append(Int(readLine()!)!)
        }
    }
}

let number = Int(readLine()!)!

boxes.reserveCapacity(number)

var tournaments = [Tournament]()
tournaments.reserveCapacity(number)

for _ in 0..<number {
    tournaments.append(Tournament())
}

for edition in 0..<number {
    var box = Int()
    for player in 0..<tournaments[edition].gluttons {
        box += day / tournaments[edition].times[player]
    }
    box = Int(ceil(Double(box) / Double(tournaments[edition].cookies)))
    boxes.append(box)
}

(0..<number).forEach { print(boxes[$0]) }
