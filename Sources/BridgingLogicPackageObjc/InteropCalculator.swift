//
//  File.swift
//  
//
//  Created by Manuel Djirlic on 03.08.24.
//

import Foundation
import BusinessLogicPackage

@objc public class InteropCalculator: NSObject {
    @objc public func compute(operation: ObjcOperation, data: OperationData) -> Double {
        Calculator().compute(operation.toOperation(using: data))
    }
}
