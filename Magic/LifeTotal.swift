import Foundation

// Keeps track of the life total for a player
struct LifeTotal: Counter
{
    var counter: RestrictiveInteger
    
    mutating func changeTotal(by amount: Int) -> Bool
    {
        counter.changeTotal(by: amount)
        return true
    }
    
    mutating func setCounter(to value: Int)
    {
        counter.setTotal(to: value)
    }
    
    init?(initialLife: Int)
    {
        guard let RestrictedLife = GreaterThanZeroInteger(fromInt: initialLife) else { return nil }
        counter = RestrictedLife
    }
    
}
