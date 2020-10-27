#!/usr/bin/env xcrun swift
/// https://ideone.com/py0vDb
/// https://pl.spoj.com/problems/PP0504B/

import Foundation

func string_merge(word str1: String, word str2: String) -> String {
    return zip(str1,str2).reduce("") { "\($0)\($1.0)\($1.1)" }
}

var words = [""]
let n = Int(readLine()!)!

for _ in 1...n {
    let word = readLine()!.split(separator: " ")
    words.append(string_merge(word: String(word[0]), word: String(word[1])))
}

for word in words { print(word) }
