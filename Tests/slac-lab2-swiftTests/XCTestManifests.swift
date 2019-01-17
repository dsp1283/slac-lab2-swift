import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(slac_lab2_swiftTests.allTests),
    ]
}
#endif