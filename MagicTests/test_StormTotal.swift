import XCTest
@testable import Magic

class test_StormTotal: XCTestCase
{
    func test_CounterValueShouldResetToZeroWhenResetCounterToZeroIsCalled()
    {
        let test = StormTotal()
        // test shouldn't fail here, added to remove build warnings
        let isok = test.changeTotal(by: 1)
        test.resetCounterToZero()
        assert(isok && test.counter.value == 0)
    }
}
