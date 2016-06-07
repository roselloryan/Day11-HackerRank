//
//  main.swift
//  Day11-HackerRank

import Foundation

var decimalNum : Double = 951

// find number of bits needed
var placesNeeded : Double = 0

var solutionArray : [Int] = Array()

while pow(2, placesNeeded) <= decimalNum {
    placesNeeded += 1
}

// determine 1 or 0
for i in 1...Int(placesNeeded) {
    
    if decimalNum >= pow(2, Double(placesNeeded - Double(i))) {
        solutionArray.append(1)
        decimalNum -= pow(2, placesNeeded - Double(i))
//        print("decimalNum= \(decimalNum)")
    }
    else {
        solutionArray.append(0)
    }
}

var longestStringOfOnes = 0
var tempStringOfOnes = 0

for i in 0..<solutionArray.count {
    
    if solutionArray[i] == 1 {
        tempStringOfOnes += 1
    }
    else {
        if tempStringOfOnes >= longestStringOfOnes {
            longestStringOfOnes = tempStringOfOnes
        }
        tempStringOfOnes = 0
    }
}

if tempStringOfOnes > longestStringOfOnes {
    longestStringOfOnes = tempStringOfOnes
}

print(solutionArray)
print(longestStringOfOnes)



