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
        return self.indexOf({ $0 == toFind })
    }
    
    mutating func removeCard(toRemove: Card) -> Bool
    {
        guard let i = findCardIndex(toRemove) else { return false }
        self.removeAtIndex(i)
        return true
    }
}

// TODO: Fill out card comparision functionss
//func ==(lhs: Spell, rhs: Spell) -> Bool
//{
//    if lhs.name == rhs.name
//    {
//        return true
//    }
//    return false
//}
//
//func ==(lhs: Land, rhs: Land) -> Bool
//{
//    if lhs.name == rhs.name
//    {
//        return true
//    }
//    return false
//}