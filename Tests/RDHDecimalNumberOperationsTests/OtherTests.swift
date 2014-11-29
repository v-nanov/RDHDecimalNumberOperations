//
//  OtherTests.swift
//  RDHDecimalNumberOperationsTests
//
//  Created by Richard Hodgkins on 28/11/2014.
//  Copyright (c) 2014 Rich H. All rights reserved.
//

import Foundation
import XCTest

import RDHDecimalNumberOperations

class OtherTests: XCTestCase {
    
    func testMinusOne() {
        XCTAssertEqual(NSDecimalNumber.minusOne(), NSDecimalNumber(string: "-1"), "Not minus one")
    }
    
    func testNaN() {
        XCTAssertTrue(NSDecimalNumber.notANumber().isNaN(), "Incorrect")
        XCTAssertFalse(NSDecimalNumber.one().isNaN(), "Incorrect")
    }
    
    func testAbsWithPositiveNumber() {
        let mantinssa: UInt64 = UInt64(arc4random())
        let exponent: Int16 = Int16(arc4random() % UInt32(Int16.max - 1)) + 1
        let negative = false
        
        let value = NSDecimalNumber(mantissa: mantinssa, exponent: exponent, isNegative: negative)
        
        XCTAssertEqual(value.abs(), value, "Incorrect")
    }
    
    func testAbsWithNegativeNumber() {
        let mantinssa: UInt64 = UInt64(arc4random())
        let exponent: Int16 = Int16(arc4random() % UInt32(Int16.max - 1)) + 1
        let negative = true
        
        let value = NSDecimalNumber(mantissa: mantinssa, exponent: exponent, isNegative: negative)
        
        XCTAssertEqual(value.abs(), value.decimalNumberByMultiplyingBy(NSDecimalNumber.minusOne()), "Incorrect")
    }
    
    func testAbsWithZero() {
        XCTAssertEqual(NSDecimalNumber.zero().abs(), NSDecimalNumber.zero(), "Incorrect")
    }
    
    func testAbsWithNaN() {
        XCTAssertEqual(NSDecimalNumber.notANumber().abs(), NSDecimalNumber.notANumber(), "Incorrect")
    }
    
    // TODO: Fix
/*
    
    func TODO_testSquartRootOfPositiveNumber() {
        let mantinssa: UInt64 = UInt64(arc4random())
        let exponent: Int16 = Int16(arc4random() % UInt32(Int16.max))
        let negative = false
        
        let value = NSDecimalNumber(mantissa: mantinssa, exponent: exponent, isNegative: negative)
        let doubleValue = value.doubleValue
        
        XCTAssertEqualWithAccuracy(value.sqrt()!.doubleValue, sqrt(doubleValue), DBL_EPSILON, "Incorrect")
    }
    
    func testSquartRootOfOne() {
        
        XCTAssertEqual(NSDecimalNumber.one().sqrt()!, NSDecimalNumber.one(), "Incorrect")
        XCTAssertEqual((√NSDecimalNumber.one())!, NSDecimalNumber.one(), "Incorrect")
    }
    
    func testSquartRootOfZero() {
        
        XCTAssertEqual(NSDecimalNumber.zero().sqrt()!, NSDecimalNumber.zero(), "Incorrect")
        XCTAssertEqual((√NSDecimalNumber.zero())!, NSDecimalNumber.zero(), "Incorrect")
    }
    
    func testSquartRootOfNegativeNumber() {
        
        XCTAssertNil(NSDecimalNumber.minusOne().sqrt(), "Incorrect")
        XCTAssertNil(√NSDecimalNumber.minusOne(), "Incorrect")
    }
    
    func testSquartRootOfNaN() {
        
        XCTAssertEqual(NSDecimalNumber.notANumber().sqrt()!, NSDecimalNumber.notANumber(), "Incorrect")
        XCTAssertEqual((√NSDecimalNumber.notANumber())!, NSDecimalNumber.notANumber(), "Incorrect")
    }
    
    func testSquareRootInPlace() {
        
        let mantinssa: UInt64 = UInt64(arc4random())
        let exponent: Int16 = Int16(arc4random() % UInt32(Int16.max))
        let negative = false
        
        let value = NSDecimalNumber(mantissa: mantinssa, exponent: exponent, isNegative: negative)
        let doubleValue = value.doubleValue
        
        √value
        XCTAssertEqualWithAccuracy(value.doubleValue, sqrt(doubleValue), DBL_EPSILON, "Incorrect")
    }
*/
}