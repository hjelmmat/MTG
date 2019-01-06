import Foundation

// Used when an interger should have restrictions on how 
// it can behave
protocol RestrictiveInteger
{
    var value: Int { get  set }
    
    mutating func changeTotal(by amount: Int)
    mutating func setTotal(to amount: Int)
}

func ==(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Bool
{
    if lhs.value == rhs.value
    {
        return true
    }
    return false
}

func <=(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Bool
{
    if lhs.value <= rhs.value
    {
        return true
    }
    return false
}

func >=(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Bool
{
    if lhs.value >= rhs.value
    {
        return true
    }
    return false
}

func <(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Bool
{
    if lhs.value < rhs.value
    {
        return true
    }
    return false
}

func >(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Bool
{
    if lhs.value > rhs.value
    {
        return true
    }
    return false
}

func +=(lhs: RestrictiveInteger, rhs: RestrictiveInteger) -> Int
{
    return lhs.value + rhs.value
}
