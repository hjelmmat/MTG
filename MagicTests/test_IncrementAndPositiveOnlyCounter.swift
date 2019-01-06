import XCTest
@testable import Magic

class test_IncrementAndPositiveOnlyCounter: XCTestCase
{
    func test_CounterValueShouldNotDecrement()
    {
        let test = IncrementAndPositiveOnlyCounter(initialValue: 1)!
        // test shouldn't fail here, meant to remove build warnings
        let isok = test.changeTotal(by: -1)
        assert(!isok && test.counter.value == 1)
    }
}
