//
//  AllStates.swift
//  
//
//  Created by Michael Housh on 7/30/19.
//


public struct AllStates {
    
    public static let states: [AmericanState] = [.al, .ak, .as, .az, .ar, .ca, .co, .ct, .de, .dc, .fl, .ga, .gu, .hi, .id, .il, .in, .ia, .ks, .ky, .la, .me, .md, .ma, .mi, .mn, .ms, .mo, .mt, .ne, .nv, .nh, .nj, .nm, .ny, .nc, .nd, .np, .oh, .ok, .or, .pa, .pr, .ri, .sc, .sd, .tn, .tx, .ut, .vt, .va, .vi, .wa, .wv, .wi, .wy]
    
    public static var names: [String] {
        return states.map { $0.name }
    }
    
    public static var abbreviations: [String] {
        return states.map { $0.abbreviation }
    }
    
}
