//
//  test_CardList.swift
//  Magic
//
//  Created by Matthew Hjelm on 12/30/18.
//  Copyright © 2018 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_CardList: XCTestCase
{
    let card       = MagicCard(named: "test")
    let secondCard = MagicCard(named: "not test")
        
    func test_CardListShouldBeEquatWhenTheSame()
    {
        let firstList  = CardList(withCards: [card])
        let secondList = CardList(withCards: [card])
        assert(firstList == secondList)
    }
    
    func test_CardListShouldNotBeEqualWhenDifferent()
    {
        let firstList  = CardList(withCards: [card])
        let secondList = CardList(withCards: [secondCard])
        assert((firstList == secondList) == false)
    }
}
