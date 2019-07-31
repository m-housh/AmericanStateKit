//
//  State.swift
//  
//
//  Created by Michael Housh on 7/29/19.
//

/**
 # AmericanState
 ----------
 
 Represents american states.
 
 */
public enum AmericanState: String {
    
    case al, alabama
    case ak, alaska
    case `as`, americansamoa
    case az, arizona
    case ar, arkansas
    case ca, california
    case co, colorado
    case ct, connecticut
    case de, delaware
    case dc, districtofcolumbia
    case fl, florida
    case ga, georgia
    case gu, guam
    case hi, hawaii
    case id, idaho
    case il, illinois
    case `in`, indiana
    case ia, iowa
    case ks, kansas
    case ky, kentucky
    case la, louisiana
    case me, maine
    case md, maryland
    case ma, massachusetts
    case mi, michigan
    case mn, minnesota
    case ms, mississippi
    case mo, missouri
    case mt, montana
    case ne, nebraska
    case nv, nevada
    case nh, newhampshire
    case nj, newjersey
    case nm, newmexico
    case ny, newyork
    case nc, northcarolina
    case nd, northdakota
    case np,northmarianaislands
    case oh, ohio
    case ok, oklahoma
    case or, oregon
    case pa, pennsylvania
    case pr, puertorico
    case ri, rhodeisland
    case sc, southcarolina
    case sd, southdakota
    case tn, tennessee
    case tx, texas
    case ut, utah
    case vt, vermont
    case va, virginia
    case vi, virginislands
    case wa, washington
    case wv, westvirginia
    case wi, wisconsin
    case wy, wyoming
    

    /// Initialize a possible state from a string.
    /// - parameter string: The name or abbreviation of the state.
    public static func fromString(_ string: String) -> AmericanState? {
        let str = String(string.split(separator: " ").joined())
        return AmericanState(rawValue: str.lowercased())
    }
    
}

// MARK: - Codable
extension AmericanState: Codable { }
