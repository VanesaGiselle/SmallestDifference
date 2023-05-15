//
//  SmallestDifferenceTests.swift
//  SmallestDifferenceTests
//
//  Created by Vanesa Korbenfeld on 13/05/2023.
//

import XCTest
@testable import SmallestDifference

class SmallestDifferenceTests: XCTestCase {
    func testGetSmallestDifference_EmptyArrays() throws {
        let smallestDifference = SmallestDifference([], [])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, nil)
    }
    
    func testGetSmallestDifference_FirstEmptyArray() throws {
        let smallestDifference = SmallestDifference([], [2, 4, 5, 1])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, nil)
    }
    
    func testGetSmallestDifference_SecondEmptyArray() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, nil)
    }
    
    func testGetSmallestDifference_FirstArrayBigger() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [6, 7])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, 1)
    }
    
    func testGetSmallestDifference_SecondArrayBigger() throws {
        let smallestDifference = SmallestDifference([6, 7], [2, 4, 5, 1])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, 1)
    }
    
    func testGetSmallestDifference_OnlyOneTuple() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [10, 7, 9, 6])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, 1)
    }
    
    func testGetSmallestDifference_MultipleTuples() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [3, 7, 9, 6])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, 1)
    }
    
    func testGetSmallestDifference_SameNumbersInTuple() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [3, 7, 9, 4])
        let result = smallestDifference.getSmallestDifference()
        XCTAssertEqual(result, 0)
    }
    
    //TUPLES
    
    func testGetSmallestDifferenceTuples_EmptyArrays() throws {
        let smallestDifference = SmallestDifference([], [])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, nil)
    }

    func testGetSmallestDifferenceTuples_FirstEmptyArray() throws {
        let smallestDifference = SmallestDifference([], [2, 4, 5, 1])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, nil)
    }

    func testGetSmallestDifferenceTuples_SecondEmptyArray() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, nil)
    }

    func testGetSmallestDifferenceTuples_FirstArrayBigger() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [6, 7])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 5, second: 6)])
    }

    func testGetSmallestDifferenceTuples_SecondArrayBigger() throws {
        let smallestDifference = SmallestDifference([6, 7], [2, 4, 5, 1])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 6, second: 5)])
    }
    
    func testGetSmallestDifferenceTuples_OnlyOneTupleWithNegativeNumber() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [10, 7, 9, -1])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 5, second: 7), Tuple(first: 1, second: -1)])
    }

    func testGetSmallestDifferenceTuples_OnlyOneTuple() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [10, 7, 9, 1])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 1, second: 1)])
    }

    func testGetSmallestDifferenceTuples_MultipleTuples() throws {
        let smallestDifference = SmallestDifference([2, 5, 12, 10], [3, 7, 9, 4])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 2, second: 3), Tuple(first: 5, second: 4), Tuple(first: 10, second: 9)])
    }

    func testGetSmallestDifferenceTuples_SameNumbersInTuple() throws {
        let smallestDifference = SmallestDifference([2, 4, 5, 1], [3, 7, 9, 4])
        let tuples = smallestDifference.getSmallestDifferenceTuples()
        XCTAssertEqual(tuples, [Tuple(first: 4, second: 4)])
    }
}
