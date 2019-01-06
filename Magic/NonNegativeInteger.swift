import Foundation

// Used when interger should be initialized as non negative. Value can 
// change by any amount.
class NonNegativeInteger: RestrictiveInteger
{
    var value: Int
    
    func changeTotal(by amount: Int)
    {
        value += amount
    }
    
    func setTotal(to amount: Int)
    {
        value = amount
    }
    
    init?(fromInt: Int)
    {
        guard fromInt >= 0 else { return nil }
        value = fromInt
    }
}