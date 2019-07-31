//
//  State+abbreviation.swift
//  
//
//  Created by Michael Housh on 7/29/19.
//

extension AmericanState {
    
    /// The state's abbreviation.
    public var abbreviation: String {
        switch self {
        case .al, .alabama:
            return "al"
        case .ak, .alaska:
            return "ak"
        case .as, .americansamoa:
            return "as"
        case .az, .arizona:
            return "az"
        case .ar, .arkansas:
            return "ar"
        case .ca, .california:
            return "ca"
        case .co, .colorado:
            return "co"
        case .ct, .connecticut:
            return "ct"
        case .de, .delaware:
            return "de"
        case .dc, .districtofcolumbia:
            return "dc"
        case .fl, .florida:
            return "fl"
        case .ga, .georgia:
            return "ga"
        case .gu, .guam:
            return "gu"
        case .hi, .hawaii:
            return "hi"
        case .id, .idaho:
            return "id"
        case .il, .illinois:
            return "il"
        case .in, .indiana:
            return "in"
        case .ia, .iowa:
            return "ia"
        case .ks, .kansas:
            return "ks"
        case .ky, .kentucky:
            return "ky"
        case .la, .louisiana:
            return "la"
        case .me, .maine:
            return "me"
        case .md, .maryland:
            return "md"
        case .ma, .massachusetts:
            return "ma"
        case .mi, .michigan:
            return "mi"
        case .mn, .minnesota:
            return "mn"
        case .ms, .mississippi:
            return "ms"
        case .mo, .missouri:
            return "mo"
        case .mt, .montana:
            return "mt"
        case .ne, .nebraska:
            return "ne"
        case .nv, .nevada:
            return "nv"
        case .nh, .newhampshire:
            return "nh"
        case .nj, .newjersey:
            return "nj"
        case .nm, .newmexico:
            return "nm"
        case .ny, .newyork:
            return "ny"
        case .nc, .northcarolina:
            return "nc"
        case .nd, .northdakota:
            return "nd"
        case .np, .northmarianaislands:
            return "np"
        case .oh, .ohio:
            return "oh"
        case .ok, .oklahoma:
            return "ok"
        case .or, .oregon:
            return "or"
        case .pa, .pennsylvania:
            return "pa"
        case .pr, .puertorico:
            return "pr"
        case .ri, .rhodeisland:
            return "ri"
        case .sc, .southcarolina:
            return "sc"
        case .sd, .southdakota:
            return "sd"
        case .tn, .tennessee:
            return "tn"
        case .tx, .texas:
            return "tx"
        case .ut, .utah:
            return "ut"
        case .vt, .vermont:
            return "vt"
        case .va, .virginia:
            return "va"
        case .vi, .virginislands:
            return "vi"
        case .wa, .washington:
            return "wa"
        case .wv, .westvirginia:
            return "wv"
        case .wi, .wisconsin:
            return "wi"
        case .wy, .wyoming:
            return "wy"
        }
    }
}
