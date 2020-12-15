import XCTest
@testable import JWStatusHUD

final class JWStatusHUDTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(JWStatusHUD().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
