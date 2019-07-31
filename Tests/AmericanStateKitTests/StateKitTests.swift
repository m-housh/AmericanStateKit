import XCTest
import AmericanStateKit

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
    
    static var allTests = [
        ("testStates", testStates),
    ]
}
