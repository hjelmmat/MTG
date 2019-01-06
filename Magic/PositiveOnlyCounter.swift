import Foundation

// Used when the counter value should be initialized as positive only
class PositiveOnlyCounter : Counter
{
    var counter: RestrictiveInteger
    
    // change counter value to a total greater than 0
    func changeTotal(by amount: Int) -> Bool
    {
        guard counter.value + amount >= 0 else { return false }
        counter.changeTotal(by: amount)
        return true
    }
    
    init?(initialValue counter: Int)
    {
        guard let restrictedInitial = NonNegativeInteger(fromInt: counter) else { return nil }
        self.counter = restrictedInitial
    }
}