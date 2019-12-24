import XCTest
import Validations
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
        
        let state = ValidatableState(state: .oh)
        print(state.state ?? "nil")
        XCTAssert(state.isValid)
        
        XCTAssert(ValidatableStringState(state: "ny").isValid)
        
        let validator = Validator<String>.state
        XCTAssertThrowsError(try validator.validate("foo"))
    }
    
    func testStringExtension() {
        XCTAssertNotNil("OHIO".state)
        XCTAssertNil("Foobar".state)
        
        let fl = "fl".state!
        let florida = "Florida".state!
        
        XCTAssertEqual(fl.name, florida.name)
        XCTAssertEqual(fl.abbreviation, florida.abbreviation)
        XCTAssertEqual(fl, florida)
        
        let one = AmericanState("newyork")!
        let two = AmericanState("new york")!
        XCTAssertEqual(one, two)


    }
    
    func testDecoding() {
        let json = """
            { "state": "ny" }
        """
        let data = json.data(using: .utf8)!
        let decoder = JSONDecoder()
        let decoded = try! decoder.decode(ValidatableState.self, from: data)
        XCTAssertEqual(decoded.state?.abbreviation, "NY")
    }

    func testEquatable() {
        let names = AllStates.names.map { $0.state! }

        for name in names {
            let abbreviation = name.abbreviation.state!
            XCTAssertEqual(abbreviation, name)

            let shouldNotEqual = names.first { $0 != name }!
            let shouldNotEqualAbbreviation = shouldNotEqual.abbreviation.state!
            XCTAssertNotEqual(name, shouldNotEqual)
            XCTAssertNotEqual(name, shouldNotEqualAbbreviation)
        }
    }

    func testEquatable2() {
        let ohio = AmericanState.ohio
        let oh = AmericanState.oh
        XCTAssertEqual(ohio, oh)
        XCTAssertNotEqual(ohio, .al)
        XCTAssertNotEqual(ohio, .alaska)
    }
    
    static var allTests = [
        ("testStates", testStates),
    ]
}
