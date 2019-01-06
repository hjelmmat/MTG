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
        assert(list.findCardIndex(cardOne) == 1)
    }
    
    func test_MethodShouldReturnNilWhenCardIsNotFound()
    {
        let list = [secondCard]
        assert(list.findCardIndex(cardOne) == nil)
    }
    
    func test_CardShouldBeReomvedWhenMethodIsCalled()
    {
        var list = [cardOne, secondCard]
        list.removeCard(cardOne)
        assert(list == [secondCard])
    }
    
    func test_RemovingCardShouldReturnFalseWhenCardIsNotFound()
    {
        var list = [cardOne]
        assert(list.removeCard(secondCard) == false)
    }
}
