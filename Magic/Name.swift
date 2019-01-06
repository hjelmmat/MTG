import Foundation

// class used for naming of objects
// TODO: Include restrictions on characters allowed in the name
class Name
{
    let name: String
 
    init(nameIs: String)
    {
        self.name = nameIs
    }
}

func ==(lhs: Name, rhs: Name) -> Bool
{
    if (lhs.name == rhs.name)
    {
        return true
    }
    return false
}

func !=(lhs: Name, rhs: Name) -> Bool
{
    if !(lhs.name == rhs.name)
    {
        return true
    }
    return false
}