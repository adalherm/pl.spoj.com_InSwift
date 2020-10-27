#!/usr/bin/env xcrun swift
/// https://ideone.com/iDZ5xj
/// https://pl.spoj.com/problems/PTEST/

import Foundation

print((1...2).reduce(0) { k, _ in k + Int(readLine()!)! })
