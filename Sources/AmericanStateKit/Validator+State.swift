//
//  File.swift
//  
//
//  Created by Michael Housh on 7/30/19.
//

import Validations

extension Validator where T == String {
    
    /// Ensures a string is a valid state name or abbreviation.
    public static var state: Validator<T> {
        return StateValidator().validator()
    }
}

fileprivate struct StateValidator: ValidatorType {
    
    var validatorReadable: String {
        return "a valid state"
    }
    
    func validate(_ data: String) throws {
        guard let _ = AmericanState.fromString(data) else {
            throw BasicValidationError("Invalid state.")
        }
    }
}
