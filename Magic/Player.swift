import Foundation

// Basic player in a game.
struct Player
{
    let name: Name
    
    let lifeTotal   : LifeTotal
    // since 0 is hardcoded here, we know it will pass
    let energyTotal = PositiveOnlyCounter(initialValue: 0)!
    let poisonTotal = IncrementAndPositiveOnlyCounter(initialValue: 0)!
    let stormTotal  = StormTotal()

    let deck : Deck
    
    init?(name: String, initialLife lifeValue: Int, currentDeck: Deck)
    {
        self.name = Name(nameIs: name)
        guard let restrictedInitialLife = LifeTotal(initialLife: lifeValue) else { return nil }
        self.lifeTotal = restrictedInitialLife
        self.deck = currentDeck
    }
}