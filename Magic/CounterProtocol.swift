import Foundation

// Required for all counters an object might receive
protocol Counter
{
    var counter: RestrictiveInteger { get }
    
    mutating func changeTotal(by amount: Int) -> Bool
}