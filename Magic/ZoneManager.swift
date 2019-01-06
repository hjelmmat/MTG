 import Foundation

struct ZoneManager
{
    let handZone        : CardList
    let libraryZone     : CardList
    let graveyardZone   = CardList()
    let exileZone       = CardList()
    let battleFieldZone = CardList()
    
    func getZoneFromString(zone name: String) -> CardList?
    {
        let zone: CardList?
        switch name {
        case "Hand":
            zone = handZone
        case "Library":
            zone = libraryZone
        case "Graveyard":
            zone = graveyardZone
        case "Exile":
            zone = exileZone
        case "BattleField":
            zone = battleFieldZone
        default:
            zone = nil
        }
        return zone
    }
    
    func moveCardFromOneZoneToAnother(card name           : String,
                                           initialZoneName: String,
                                           finalZoneName  : String) -> Bool
    {
        guard let firstZone  = getZoneFromString(zone: initialZoneName) else { return false }
        guard let secondZone = getZoneFromString(zone: finalZoneName)   else { return false }
        let cardTransfer = CardTransferBetweenCardLists(initial: firstZone, final: secondZone)
        let isok  = cardTransfer.moveCardFromOneListToAnother(card: name, initialList: firstZone, finalList: secondZone)
        return isok
    }
    
    init(from deck: Deck)
    {
        let currentCardList = deck.cards.list
        currentCardList.shuffle()
        let numCards = currentCardList.count
        if (numCards < 8)
        {
            handZone    = CardList(withCards: Array(currentCardList[0..<numCards]))
            libraryZone = CardList()
        }
        else
        {
            handZone    = CardList(withCards: Array(currentCardList[0...6]))
            libraryZone = CardList(withCards: Array(currentCardList[7..<numCards]))
        }
    }
}