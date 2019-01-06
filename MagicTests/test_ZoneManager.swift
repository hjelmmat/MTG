//
//  test_ZoneManager.swift
//  Magic
//
//  Created by Matthew Hjelm on 12/30/18.
//  Copyright © 2018 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_ZoneManager: XCTestCase
{

    let card     = MagicCard(named: "test")
    let newCard = MagicCard(named: "notTest")
    var cardList : CardList!
    var deck     : Deck!
    
    func test_getZoneFromStringShouldReturnCorrectVariableWhenCalled()
    {
        cardList = CardList(withCards: [card])
        deck     = Deck(name: "test", cardList: cardList)
        let test = ZoneManager(from: deck)
        
        let results: [(name: String, expected: CardList?)] = [("Hand",        test.handZone),
                                                              ("Library",     test.libraryZone),
                                                              ("Garbage",     nil),
                                                              ("Graveyard",   test.graveyardZone),
                                                              ("Exile",       test.exileZone),
                                                              ("BattleField", test.battleFieldZone)]
        var isok = true
        for entry in results
        {
            let zone = test.getZoneFromString(zone: entry.name)
            if entry.expected != nil
            {
                guard zone != nil else { isok = false; break }
                isok = isok && (zone! == entry.expected!)
            }
            else
            {
                isok = isok && (zone == nil)
            }
        }
        assert (isok)
    }
    
    func test_ShouldInitializeWithHandEqualToDeckSizeWhenDeckSizeIsLessThanEight()
    {
        cardList = CardList(withCards: [card, card, card, card, card, card, card])
        deck = Deck(name: "test", cardList: cardList)
        let test = ZoneManager(from: deck)
        var isok = test.handZone.list.count == 7
        isok = isok && test.libraryZone.list.count == 0
        assert(isok)
    }
    
    func test_ShouldInitalizeWithHandSizeEqualToSevenAndLibraryConainingTheRest()
    {
        cardList = CardList(withCards: [card, card, card, card, card, card, card, card])
        deck = Deck(name: "test", cardList: cardList)
        let test = ZoneManager(from: deck)
        var isok = test.handZone.list.count == 7
        isok = isok && test.libraryZone.list.count == 1
        assert(isok)
    }
}
