//
//  SmallestDifference.swift
//  SmallestDifference
//
//  Created by Vanesa Korbenfeld on 13/05/2023.
//

import Foundation

//Smallest Difference: Given two arrays of integers, compute the pair of values (one value in each array) with the smallest (non-negative) difference. Return the difference.
//EXAMPLE
//Input: {1, 3, 15, 11, 2}, {23, 127,235, 19, 8} Output: 3. That is, the pair (11, 8). Hints:#632, #670, #679

class SmallestDifference {
    private var first: [Int]
    private var second: [Int]
    
    private var tuples: [Int : [Tuple]] = [:]
    
    init(_ first: [Int],_ second: [Int]) {
        self.first = first
        self.second = second
    }
    
    func getSmallestDifference() -> Int? {
        if first.isEmpty || second.isEmpty {
            return nil
        }
        generateTuples()
        return tuples.keys.min()
    }
    
    func getSmallestDifferenceTuples() -> [Tuple]? {
        if first.isEmpty || second.isEmpty {
            return nil
        }
        generateTuples()
        guard let min = tuples.keys.min() else { return nil }
        return tuples[min]
    }
    
    private func generateTuples() {
        for i in first {
            for j in second {
                let difference: Int = abs(i - j)
                tuples[difference, default: []].append(Tuple(first: i, second: j))
            }
        }
    }
}
