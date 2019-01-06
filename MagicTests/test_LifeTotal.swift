import XCTest
@testable import Magic

class test_LifeTotal: XCTestCase
{
    func test_ShouldInitalizeToNilWhenInitialLifeIsZero()
    {
        assert(LifeTotal(initialLife: 0) == nil)
    }
    
    func test_ChangeTotalShouldUpdateCounterValueWhenUsed()
    {
        var test = LifeTotal(initialLife: 20)!
        test.changeTotal(by: -1)
        assert(test.counter.value == 19)
    }
    
    func test_SetCounterShouldSetCounterValueWhenUsed()
    {
        var test = LifeTotal(initialLife: 20)!
        test.setCounter(to: 100)
        assert(test.counter.value == 100)
    }
}
