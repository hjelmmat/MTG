import XCTest
@testable import Magic

class test_Player: XCTestCase
{
    var mockDeck: Deck!
    
    override func setUp()
    {
        let mockCard = MagicCard(named: "test")
        mockDeck = Deck(name: "test", cardList: CardList(withCards: [mockCard]))
    }
    
    func test_ShouldInitalizeToNilWhenLifeTotalIsInitalizedToNil()
    {
        assert(Player(name: "Mock Player", initialLife: 0, currentDeck: mockDeck) == nil)
    }
}
