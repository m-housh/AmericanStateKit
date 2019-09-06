//
//  String+state.swift
//  
//
//  Created by Michael Housh on 7/30/19.
//

extension String {
    
    /// Convert a string to a state object.
    public var state: AmericanState? { return AmericanState(self) }
}
