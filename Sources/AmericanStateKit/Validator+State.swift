//
//  Validator+State.swift
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

private struct StateValidator: ValidatorType {
    
    /// The name of our validator.
    /// - SeeAlso: `ValidatorType`
    var validatorReadable: String {
        return "a valid state"
    }
    
    /// Validates a string is a state or a state's abbreviation
    /// - SeeAlso: `ValidatorType`
    func validate(_ data: String) throws {
        guard AmericanState(data) != nil else {
            throw BasicValidationError("Invalid state.")
        }
    }
}
