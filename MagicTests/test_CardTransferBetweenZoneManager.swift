//
//  test_CardTransferBetweenZoneManager.swift
//  Magic
//
//  Created by Matthew Hjelm on 1/3/19.
//  Copyright © 2019 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_CardTransferBetweenZoneManager: XCTestCase
{
    let oneCard     = MagicCard(named: "one card")
    let twoCard     = MagicCard(named: "two card")
    
    var firstCardList  : CardList!
    var secondCardList : CardList!
    
    override func setUp()
    {
        firstCardList = CardList(withCards: [oneCard])
        secondCardList = CardList(withCards: [twoCard])
    }
    
    func test_MoveCardShouldReturnFalseWhenCardDoesNotExist()
    {
        let test = CardTransferBetweenCardLists(initial: firstCardList, final: secondCardList)
        assert(test.moveCardFromOneListToAnother(card       : "three card",
                                                 initialList: firstCardList,
                                                 finalList  : secondCardList) == false)
    }
    
}
