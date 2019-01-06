import Foundation

// A deck used in a game
struct Deck
{
    var name : Name
    let cards: CardList
    
    init(name: String, cardList: CardList )
    {
        self.name  = Name(nameIs: name)
        self.cards = cardList
    }
}