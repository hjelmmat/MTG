import Foundation

// Used when interger should be initialized as greater than 0. Value 
// can change by any amount
class GreaterThanZeroInteger: NonNegativeInteger
{
    override init?(fromInt: Int)
    {
        guard fromInt > 0 else { return nil }
        super.init(fromInt: fromInt)
    }
}