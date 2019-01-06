import XCTest
@testable import Magic

class test_StormTotal: XCTestCase
{
    func test_CounterValueShouldResetToZeroWhenResetCounterToZeroIsCalled()
    {
        let test = StormTotal()
        test.changeTotal(by: 1)
        test.resetCounterToZero()
        assert(test.counter.value == 0)
        
    }
}
