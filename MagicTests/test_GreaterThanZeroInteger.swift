import XCTest
@testable import Magic

class test_GreaterThanZeroInteger: XCTestCase
{
    func test_ShouldNotInitalizeWhenInputIsZero()
    {
        assert(GreaterThanZeroInteger(fromInt: 0) == nil)
    }
}
