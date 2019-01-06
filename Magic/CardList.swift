import Foundation

// needs to be a class so it can be passed by reference in GameManager
class CardList
{
    var list: [MagicCard]
    
    init(withCards: [MagicCard])
    {
        list = withCards
    }
    
    init()
    {
        list = []
    }
}

func ==(lhs: CardList, rhs: CardList) -> Bool
{
    if lhs.list == rhs.list
    {
        return true
    }
    return false
}

