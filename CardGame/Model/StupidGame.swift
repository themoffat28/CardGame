//
//  StupidGame.swift
//  CardGame
//
//  Created by Moffat, Braeden on 11/11/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import Foundation

class StupidGame
{
    //Declaratiion Section
    internal var score : Int
    internal var discardPile : Int
    internal var winnersPile : Int
    internal var drawingDeck : PlayingCardDeck
    internal var hand : Int
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnersPile = Int()
        self.drawingDeck = PlayingCardDeck()
        self.hand = Int()
    }
    
    //Method
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        hand.append((drawingDeck.drawCard() as? PlayingCardDeck)
        
    }
    
    
}
