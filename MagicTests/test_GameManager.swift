//
//  test_GameManager.swift
//  Magic
//
//  Created by Matthew Hjelm on 12/30/18.
//  Copyright © 2018 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_GameManager: XCTestCase
{
    
    let mockCard  = MagicCard(named: "test")
    var mockDeck  : Deck!
    var mockPlayer: Player!
    
    override func setUp()
    {
        mockDeck   = Deck(name: "test", cardList: CardList(withCards: [mockCard]))
        mockPlayer = Player(name: "test", initialLife: 20, currentDeck: mockDeck)
    }
}
