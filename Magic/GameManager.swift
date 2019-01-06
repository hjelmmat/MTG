import Foundation

struct GameManager
{
    let player      : Player
    let zoneManager : ZoneManager
    
    func moveCard(cardName: String, initialZoneName: String, finalZoneName: String) -> Bool
    {
        let isok = zoneManager.moveCardFromOneZoneToAnother(card: cardName,
                                                            initialZoneName: initialZoneName,
                                                            finalZoneName: finalZoneName)
        return isok
    }
    
    init(withPlayer: Player)
    {
        player = withPlayer
        zoneManager = ZoneManager(from: player.deck)
    }
}