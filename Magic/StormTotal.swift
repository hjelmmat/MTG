import Foundation

// Keeps track of the storm count for a player
class StormTotal: IncrementAndPositiveOnlyCounter
{
    func resetCounterToZero()
    {
        counter.setTotal(to: 0)
    }
    
    init()
    {
        // since 0 is hardcoded here, we know it will pass
        super.init(initialValue: 0)!
    }
}