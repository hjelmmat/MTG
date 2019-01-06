//
//  Battlegroung.swift
//  Magic
//
//  Created by Matthew Hjelm on 6/15/16.
//  Copyright © 2016 Matthew Hjelm. All rights reserved.
//

import Foundation


class Deck
{
    let deck: [Card]
    
    init(deck: [Card], basicLands: [BasicLand: Int])
    {
        self.deck = deck
    }
}

class Player
{
    let deck: Deck
    var lifeTotal: Int
    var manaPool: [Color: Int] = [Color.blue: 0, Color.black: 0, Color.green: 0, Color.red: 0, Color.white: 0]
    var creaturesOnBattleField: [Creature] = []
    var enchantmentsOnBattleField: [Enchantment] = []
    var landsOnBattleField: [BasicLand] = []
    var artifactsOnBattleField: [Artifact] = []
//    var aurasOnBattleField: [Creature: Enchantment] = [:]
    var planeswalkersOnBattleField: [Planeswalker] = []
    
    init(deck: Deck, lifeTotal: Int)
    {
        self.deck = deck
        self.lifeTotal = lifeTotal
    }
    
    func castSpell(target: Spell) -> Bool
    {
        if target.cast(self)
        {
            return false
        }
        for (color, cost) in target.castingCost
        {
            if color == Color.any
            {
                //will need to do something here to account for any color and the unknown order of colors
            }
            if var availableMana = manaPool[color]
            {
                availableMana -= cost
                if availableMana < 0
                {
                    return false
                }
                manaPool[color] = availableMana
            }
        }
        
        return true
    }
}

