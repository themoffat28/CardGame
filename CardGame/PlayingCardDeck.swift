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
    override init()
    {
        super.init()
        for suit in PlayingCard.validSuits()
        {
            for rank in 1... PlayingCard.maxRank()
            {
                let currentCard = PlayingCard (withRank: rank, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
//        for suit in PlayingCard.validSuits()
//        {
//            for rank in 1... PlayingCard.maxRank()
//            {
//                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
//                self.cards.append(currentCard)
//            }
//        }
        
        
    }
    
    func orderDeck() -> Void
    {
    
    }
}
