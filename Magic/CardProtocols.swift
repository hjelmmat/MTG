import Foundation

// Basic properties of all cards
protocol Card
{
    var name : Name        { get }

//    TODO: Add searching capabilities to cards
//    var cardColor: Set<Color>  { get }
//    var subType  : CardSubType { get }
//    var set      : CardSet     { get }
//    var text     : CardText    { get }
}

func ==(lhs: Card, rhs: Card) -> Bool
{
    if (lhs.name == rhs.name)
    {
        return true
    }
    return false
}

func !=(lhs: Card, rhs: Card) -> Bool
{
    if !(lhs.name == rhs.name)
    {
        return true
    }
    return false
}

// extension to the Array type for an array of Cards

extension Array where Element:Card
{
    func findCardIndex(toFind: Card) -> Int?
    {
        return self.firstIndex(where: { $0 == toFind })
    }
    
    mutating func removeCard(toRemove: Card) -> Bool
    {
        guard let i = findCardIndex(toFind: toRemove) else { return false }
        self.remove(at: i)
        return true
    }
}
