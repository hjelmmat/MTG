import Foundation

struct MagicCard: Card
{
    var name : Name
    
    init(named name: String)
    {
        self.name = Name(nameIs: name)
    }
}

func ==(lhs: [MagicCard], rhs: [MagicCard]) -> Bool
{
    if lhs.count == rhs.count
    {
        for (index, value) in lhs.enumerated()
        {
            if value != rhs[index]
            {
                return false
            }
        }
        return true
    }
    return false
    
}
