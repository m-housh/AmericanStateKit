import XCTest
@testable import AmericanStateKit

final class StateKitTests: XCTestCase {
    
    
    func testStates() {
        _ = testData.map { state in
            state.assert()
        }
    }
    
    func testAllStates() {
        let expectedCount = 56
        XCTAssertEqual(AllStates.states.count, expectedCount)
        XCTAssertEqual(AllStates.names.count, expectedCount)
        XCTAssertEqual(AllStates.abbreviations.count, expectedCount)
        
    }
    
    func testValidations() {
        XCTAssertFalse(ValidatableState(state: nil).isValid)
        XCTAssertFalse(ValidatableState(state: "12345").isValid)
        XCTAssert(ValidatableState(state: "AL").isValid)
    }
    
    func testStringExtension() {
        XCTAssertNotNil("OHIO".state)
        XCTAssertNil("Foobar".state)
        
        let fl = "fl".state!
        let florida = "Florida".state!
        
        XCTAssertEqual(fl.name, florida.name)
        XCTAssertEqual(fl.abbreviation, florida.abbreviation)
        XCTAssertNotEqual(fl, florida)
        
        let one = AmericanState("newyork")!
        let two = AmericanState("new york")!
        XCTAssertEqual(one, two)


    }
    
    static var allTests = [
        ("testStates", testStates),
    ]
}
