import XCTest
@testable import Magic

class test_NonNegativeInteger: XCTestCase
{
    func test_ShouldInitalizeToNilWhenInputIsNegative()
    {
        assert(NonNegativeInteger(fromInt: -1) == nil)
    }
    
    func test_ValueShouldChangeWhenChangingTotal()
    {
        let test = NonNegativeInteger(fromInt: 0)!
        test.changeTotal(by: 1)
        assert(test.value == 1)
    }
    
    func test_ValueShouldChangeWhenSettingTotal()
    {
        let test = NonNegativeInteger(fromInt: 1)!
        test.setTotal(to: 100)
        assert(test.value == 100)
    }
}
