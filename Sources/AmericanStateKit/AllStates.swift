//
//  AllStates.swift
//  
//
//  Created by Michael Housh on 7/30/19.
//

/**
 # AllStates
 
 Container for all the states names and abbreviations.
 
 */
public struct AllStates {
    
    /// All the states to get names and abbreviations from.
    public static let states: [AmericanState] = [
        .al, .ak, .as, .az, .ar, .ca, .co, .ct, .de, .dc, .fl,
        .ga, .gu, .hi, .id, .il, .in, .ia, .ks, .ky, .la, .me,
        .md, .ma, .mi, .mn, .ms, .mo, .mt, .ne, .nv, .nh, .nj,
        .nm, .ny, .nc, .nd, .np, .oh, .ok, .or, .pa, .pr, .ri,
        .sc, .sd, .tn, .tx, .ut, .vt, .va, .vi, .wa, .wv, .wi,
        .wy
    ]
    
    /// All the names of the states.
    public static var names: [String] {
        return states.map { $0.name }
    }
    
    /// All the abbreviations of the states.
    public static var abbreviations: [String] {
        return states.map { $0.abbreviation }
    }
    
}
