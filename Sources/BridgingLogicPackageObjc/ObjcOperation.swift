//
//  File.swift
//  
//
//  Created by Manuel Djirlic on 03.08.24.
//

import Foundation
import BusinessLogicPackage

@objc public enum ObjcOperation: Int {
    case add
    case subtract
}

extension ObjcOperation {
    func toOperation(using data: OperationData) -> BusinessLogicPackage.Operation {
        switch self {
        case .add:
            return .add(first: data.first, second: data.second)
        case .subtract:
            return .subtract(first: data.first, second: data.second)
        }
    }
}


