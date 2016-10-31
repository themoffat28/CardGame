//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Moffat, Braeden on 10/31/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    lazy var cards = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
        
        
    }
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func orderDeck() -> Void
    {
        
    }
}
