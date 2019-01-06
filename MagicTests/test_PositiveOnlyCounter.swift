import XCTest
@testable import Magic

class test_PositiveOnlyCounter: XCTestCase
{
    func test_ShouldInitalizeToNilWhenInputIsNegative()
    {
        assert(PositiveOnlyCounter(initialValue: -1) == nil)
    }
    
    func test_CounterValueShouldNotChangeToANegativeWhenUsingChangeTotal()
    {
        let test = PositiveOnlyCounter(initialValue: 0)!
        // test shouldn't fail here, meant to remove build warnings
        let isok = test.changeTotal(by: -1)
        assert(!isok && test.counter.value == 0)
    }
    
    func test_CounterValueShouldDecrementWhenResultIsPositive()
    {
        let test = PositiveOnlyCounter(initialValue: 1)!
        // test shouldn't fail here, meant to remove build warnings
        let isok = test.changeTotal(by: -1)
        assert(isok && test.counter.value == 0)
    }
    
    func test_CounterValueShouldIncrement()
    {
        let test = PositiveOnlyCounter(initialValue: 0)!
        // test shouldn't fail here, meant to remove build warnings
        let isok = test.changeTotal(by: 1)
        assert(isok && test.counter.value == 1)
    }
}
