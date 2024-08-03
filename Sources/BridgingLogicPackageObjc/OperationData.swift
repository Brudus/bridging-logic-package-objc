//
//  File.swift
//  
//
//  Created by Manuel Djirlic on 03.08.24.
//

import Foundation

@objc public class OperationData: NSObject {
    let first: Double
    let second: Double

    @objc public init(first: Double, second: Double) {
        self.first = first
        self.second = second
    }
}
