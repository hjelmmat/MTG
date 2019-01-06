//
//  CardTransferBetweenZoneManager.swift
//  Magic
//
//  Created by Matthew Hjelm on 1/3/19.
//  Copyright © 2019 Matthew Hjelm. All rights reserved.
//

import Foundation

struct CardTransferBetweenCardLists
{
    let initialList: CardList
    let finalList  : CardList
    
    func moveCardFromOneListToAnother(card name: String, initialList: CardList, finalList: CardList) -> Bool
    {
        let card = MagicCard(named: name)
        if initialList.list.removeCard(card)
        {
            finalList.list.append(card)
            return true
        }
        return false
    }
    
    init(initial firstList: CardList, final secondList: CardList)
    {
        initialList = firstList
        finalList   = secondList
    }
    
}