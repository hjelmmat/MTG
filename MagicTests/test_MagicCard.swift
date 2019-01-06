//
//  test_GenericCard.swift
//  Magic
//
//  Created by Matthew Hjelm on 12/31/18.
//  Copyright © 2018 Matthew Hjelm. All rights reserved.
//

import XCTest
@testable import Magic

class test_MagicCard: XCTestCase
{
    let card       = MagicCard(named: "test")
    let secondCard = MagicCard(named: "not test")
    
    func test_ArraysWithGenericCardsShouldBeEqualWhenTheSame()
    {
        let firstArray  = [card]
        let secondArray = [card]
        assert(firstArray == secondArray)
    }
    
    func test_ArrayWithGenericCardsShouldNotBeEqualWhenDifferent()
    {
        let firstArray  = [card]
        let secondArray = [secondCard]
        assert(!(firstArray == secondArray))
    }
}
