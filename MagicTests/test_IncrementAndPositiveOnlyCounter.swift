import XCTest
@testable import Magic

class test_IncrementAndPositiveOnlyCounter: XCTestCase
{
    func test_CounterValueShouldNotDecrement()
    {
        let test = IncrementAndPositiveOnlyCounter(initialValue: 1)!
        test.changeTotal(by: -1)
        assert(test.counter.value == 1)
    }

}
