//
//  File.swift
//  
//
//  Created by Michael Housh on 7/30/19.
//

import AmericanStateKit
import XCTest

struct StateTestContainer {
    let state: AmericanState
    let abbreviatedState: AmericanState
    
    var abbreviationShouldMatch: String {
        return abbreviatedState.rawValue
    }
    
    let nameShouldMatch: String
    
    init(state: AmericanState, abbreviatedState: AmericanState, nameShouldMatch: String? = nil) {
        self.state = state
        self.abbreviatedState = abbreviatedState
        self.nameShouldMatch = nameShouldMatch ?? state.rawValue.capitalized
    }
    
    func assert() {
        print()
        print("Testing state: \(nameShouldMatch)")
        XCTAssertEqual(state.name, nameShouldMatch)
        XCTAssertEqual(abbreviatedState.name, nameShouldMatch)
        XCTAssertEqual(state.abbreviation, abbreviationShouldMatch)
        XCTAssertEqual(abbreviatedState.abbreviation, abbreviationShouldMatch)
        
        let initializedName = AmericanState.fromString(nameShouldMatch)
        let initializedAbbreviation = AmericanState.fromString(abbreviationShouldMatch)
        
        XCTAssertNotNil(initializedName)
        XCTAssertNotNil(initializedAbbreviation)
        
    }
}


var testData = [
    
    StateTestContainer(
        state: .alabama,
        abbreviatedState: .al
    ),
    StateTestContainer(
        state: .alaska,
        abbreviatedState: .ak
    ),
    StateTestContainer(
        state: .americansamoa,
        abbreviatedState: .as,
        nameShouldMatch: "American Samoa"
    ),
    StateTestContainer(
        state: AmericanState.arizona,
        abbreviatedState: AmericanState.az
    ),
    StateTestContainer(
        state: AmericanState.arkansas,
        abbreviatedState: AmericanState.ar
    ),
    StateTestContainer(
        state: AmericanState.california,
        abbreviatedState: AmericanState.ca
    ),
    StateTestContainer(
        state: AmericanState.colorado,
        abbreviatedState: AmericanState.co
    ),
    StateTestContainer(
        state: AmericanState.connecticut,
        abbreviatedState: AmericanState.ct
    ),
    StateTestContainer(
        state: AmericanState.delaware,
        abbreviatedState: AmericanState.de
    ),
    StateTestContainer(
        state: AmericanState.districtofcolumbia,
        abbreviatedState: AmericanState.dc,
        nameShouldMatch: "District of Columbia"
    ),
    StateTestContainer(
        state: AmericanState.florida,
        abbreviatedState: AmericanState.fl
    ),
    StateTestContainer(
        state: AmericanState.georgia,
        abbreviatedState: AmericanState.ga
    ),
    StateTestContainer(
        state: AmericanState.guam,
        abbreviatedState: AmericanState.gu
    ),
    StateTestContainer(
        state: AmericanState.hawaii,
        abbreviatedState: AmericanState.hi
    ),
    StateTestContainer(
        state: AmericanState.idaho,
        abbreviatedState: AmericanState.id
    ),
    StateTestContainer(
        state: AmericanState.illinois,
        abbreviatedState: AmericanState.il
    ),
    StateTestContainer(
        state: AmericanState.indiana,
        abbreviatedState: AmericanState.in
    ),
    StateTestContainer(
        state: AmericanState.iowa,
        abbreviatedState: AmericanState.ia
    ),
    StateTestContainer(
        state: AmericanState.kansas,
        abbreviatedState: AmericanState.ks
    ),
    StateTestContainer(
        state: AmericanState.kentucky,
        abbreviatedState: AmericanState.ky
    ),
    StateTestContainer(
        state: AmericanState.louisiana,
        abbreviatedState: AmericanState.la
    ),
    StateTestContainer(
        state: AmericanState.maine,
        abbreviatedState: AmericanState.me
    ),
    StateTestContainer(
        state: AmericanState.maryland,
        abbreviatedState: AmericanState.md
    ),
    StateTestContainer(
        state: AmericanState.massachusetts,
        abbreviatedState: AmericanState.ma
    ),
    StateTestContainer(
        state: AmericanState.michigan,
        abbreviatedState: AmericanState.mi
    ),
    StateTestContainer(
        state: AmericanState.minnesota,
        abbreviatedState: AmericanState.mn
    ),
    StateTestContainer(
        state: AmericanState.mississippi,
        abbreviatedState: AmericanState.ms
    ),
    StateTestContainer(
        state: AmericanState.missouri,
        abbreviatedState: AmericanState.mo
    ),
    StateTestContainer(
        state: AmericanState.montana,
        abbreviatedState: AmericanState.mt
    ),
    StateTestContainer(
        state: AmericanState.nebraska,
        abbreviatedState: AmericanState.ne
    ),
    StateTestContainer(
        state: AmericanState.nevada,
        abbreviatedState: AmericanState.nv
    ),
    StateTestContainer(
        state: AmericanState.newhampshire,
        abbreviatedState: AmericanState.nh,
        nameShouldMatch: "New Hampshire"
    ),
    StateTestContainer(
        state: AmericanState.newjersey,
        abbreviatedState: AmericanState.nj,
        nameShouldMatch: "New Jersey"
    ),
    StateTestContainer(
        state: AmericanState.newmexico,
        abbreviatedState: AmericanState.nm,
        nameShouldMatch: "New Mexico"
    ),
    StateTestContainer(
        state: AmericanState.newyork,
        abbreviatedState: AmericanState.ny,
        nameShouldMatch: "New York"
    ),
    StateTestContainer(
        state: AmericanState.northcarolina,
        abbreviatedState: AmericanState.nc,
        nameShouldMatch: "North Carolina"
    ),
    StateTestContainer(
        state: AmericanState.northdakota,
        abbreviatedState: AmericanState.nd,
        nameShouldMatch: "North Dakota"
    ),
    StateTestContainer(
        state: AmericanState.northmarianaislands,
        abbreviatedState: AmericanState.np,
        nameShouldMatch: "North Mariana Islands"
    ),
    StateTestContainer(
        state: AmericanState.ohio,
        abbreviatedState: AmericanState.oh
    ),
    StateTestContainer(
        state: AmericanState.oklahoma,
        abbreviatedState: AmericanState.ok
    ),
    StateTestContainer(
        state: AmericanState.oregon,
        abbreviatedState: AmericanState.or
    ),
    StateTestContainer(
       state: AmericanState.pennsylvania,
       abbreviatedState: AmericanState.pa
   ),
    StateTestContainer(
       state: AmericanState.puertorico,
       abbreviatedState: AmericanState.pr,
       nameShouldMatch: "Puerto Rico"
   ),
    StateTestContainer(
       state: AmericanState.rhodeisland,
       abbreviatedState: AmericanState.ri,
       nameShouldMatch: "Rhode Island"
   ),
    StateTestContainer(
       state: AmericanState.southcarolina,
       abbreviatedState: AmericanState.sc,
       nameShouldMatch: "South Carolina"
   ),
    StateTestContainer(
       state: AmericanState.southdakota,
       abbreviatedState: AmericanState.sd,
       nameShouldMatch: "South Dakota"
   ),
    StateTestContainer(
       state: AmericanState.tennessee,
       abbreviatedState: AmericanState.tn
   ),
    StateTestContainer(
       state: AmericanState.texas,
       abbreviatedState: AmericanState.tx
   ),
    StateTestContainer(
       state: AmericanState.utah,
       abbreviatedState: AmericanState.ut
   ),
    StateTestContainer(
       state: AmericanState.vermont,
       abbreviatedState: AmericanState.vt
   ),
    StateTestContainer(
       state: AmericanState.virginia,
       abbreviatedState: AmericanState.va
   ),
    StateTestContainer(
       state: AmericanState.virginislands,
       abbreviatedState: AmericanState.vi,
       nameShouldMatch: "Virgin Islands"
   ),
    StateTestContainer(
       state: AmericanState.washington,
       abbreviatedState: AmericanState.wa
   ),
    StateTestContainer(
       state: AmericanState.westvirginia,
       abbreviatedState: AmericanState.wv,
       nameShouldMatch: "West Virginia"
   ),
    StateTestContainer(
       state: AmericanState.wisconsin,
       abbreviatedState: AmericanState.wi
   ),
    StateTestContainer(
       state: AmericanState.wyoming,
       abbreviatedState: AmericanState.wy
   )
]
