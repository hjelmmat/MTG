import Foundation

// Used when the counter value should be initialized as positive only 
// and the value should only ever increment
class IncrementAndPositiveOnlyCounter: PositiveOnlyCounter
{
    // change counter value to a total by a non-negative amount
    override func changeTotal(by amount: Int) -> Bool
    {
        guard let restrictedAmount = NonNegativeInteger(fromInt: amount) else { return false}
        return super.changeTotal(by: restrictedAmount.value)
        
    }
}
