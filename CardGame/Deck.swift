//
//  Deck.swift
//  CardGame
//
//  Created by Moffat, Braeden on 10/31/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        
        while self.cards.count > 0
        {
            //Chooses a random valid index in the range of 0-cards.count-1.
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //Takes card from random spot in the deck. Deck then decreases in count.
            let removedCard = self.cards.removeAtIndex(randomSpot)
            tempDeck.append(removedCard)
        }
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    { }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
    
}