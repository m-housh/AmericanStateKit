//
//  State+name.swift
//  
//
//  Created by Michael Housh on 7/29/19.
//

extension AmericanState {
    
    /// The name of the state.
    public var name: String {
        switch self {
        case .al, .alabama:
            return "Alabama"
        case .ak, .alaska:
            return "Alaska"
        case .as, .americansamoa:
            return "American Samoa"
        case .az, .arizona:
            return "Arizona"
        case .ar, .arkansas:
            return "Arkansas"
        case .ca, .california:
            return "California"
        case .co, .colorado:
            return "Colorado"
        case .ct, .connecticut:
            return "Connecticut"
        case .de, .delaware:
            return "Delaware"
        case .dc, .districtofcolumbia:
            return "District of Columbia"
        case .fl, .florida:
            return "Florida"
        case .ga, .georgia:
            return "Georgia"
        case .gu, .guam:
            return "Guam"
        case .hi, .hawaii:
            return "Hawaii"
        case .id, .idaho:
            return "Idaho"
        case .il, .illinois:
            return "Illinois"
        case .in, .indiana:
            return "Indiana"
        case .ia, .iowa:
            return "Iowa"
        case .ks, .kansas:
            return "Kansas"
        case .ky, .kentucky:
            return "Kentucky"
        case .la, .louisiana:
            return "Louisiana"
        case .me, .maine:
            return "Maine"
        case .md, .maryland:
            return "Maryland"
        case .ma, .massachusetts:
            return "Massachusetts"
        case .mi, .michigan:
            return "Michigan"
        case .mn, .minnesota:
            return "Minnesota"
        case .ms, .mississippi:
            return "Mississippi"
        case .mo, .missouri:
            return "Missouri"
        case .mt, .montana:
            return "Montana"
        case .ne, .nebraska:
            return "Nebraska"
        case .nv, .nevada:
            return "Nevada"
        case .nh, .newhampshire:
            return "New Hampshire"
        case .nj, .newjersey:
            return "New Jersey"
        case .nm, .newmexico:
            return "New Mexico"
        case .ny, .newyork:
            return "New York"
        case .nc, .northcarolina:
            return "North Carolina"
        case .nd, .northdakota:
            return "North Dakota"
        case .np, .northmarianaislands:
            return "North Mariana Islands"
        case .oh, .ohio:
            return "Ohio"
        case .ok, .oklahoma:
            return "Oklahoma"
        case .or, .oregon:
            return "Oregon"
        case .pa, .pennsylvania:
            return "Pennsylvania"
        case .pr, .puertorico:
            return "Puerto Rico"
        case .ri, .rhodeisland:
            return "Rhode Island"
        case .sc, .southcarolina:
            return "South Carolina"
        case .sd, .southdakota:
            return "South Dakota"
        case .tn, .tennessee:
            return "Tennessee"
        case .tx, .texas:
            return "Texas"
        case .ut, .utah:
            return "Utah"
        case .vt, .vermont:
            return "Vermont"
        case .va, .virginia:
            return "Virginia"
        case .vi, .virginislands:
            return "Virgin Islands"
        case .wa, .washington:
            return "Washington"
        case .wv, .westvirginia:
            return "West Virginia"
        case .wi, .wisconsin:
            return "Wisconsin"
        case .wy, .wyoming:
            return "Wyoming"
        }
    }
}
