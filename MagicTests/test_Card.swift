//
//  test_Card.swift
//  Magic
//
//  Created by Matthew Hjelm on 12/30/18.
//  Copyright © 2018 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_Card: XCTestCase
{
    let cardOne = MagicCard(named: "test")
    let secondCard = MagicCard(named: "not test")
    
    func test_CardsWithSameNamesShouldBeEqualWhenEquated()
    {
        let cardTwo = MagicCard(named: "test")
        assert(cardOne == cardTwo)
    }
    
    func test_CardswithDifferentNamesShouldBeUnequalWhenEquated()
    {
        let cardTwo = MagicCard(named: "not test")
        assert(!(cardOne == cardTwo))
    }
    
    func test_CardShouldBeFoundWhenMethodIsCalled()
    {
        let list = [secondCard, cardOne]
        assert(list.findCardIndex(toFind: cardOne) == 1)
    }
    
    func test_MethodShouldReturnNilWhenCardIsNotFound()
    {
        let list = [secondCard]
        assert(list.findCardIndex(toFind: cardOne) == nil)
    }
    
    func test_CardShouldBeReomvedWhenMethodIsCalled()
    {
        var list = [cardOne, secondCard]
        // test shouldn't fail here, meant to remove build warnings
        let isok = list.removeCard(toRemove: cardOne)
        assert(isok && list == [secondCard])
    }
    
    func test_RemovingCardShouldReturnFalseWhenCardIsNotFound()
    {
        var list = [cardOne]
        assert(list.removeCard(toRemove: secondCard) == false)
    }
}
