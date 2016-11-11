//
//  StupidGame.swift
//  CardGame
//
//  Created by Moffat, Braeden on 11/11/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import UIKit
import Foundation

class StupidGame
{
    //Declaratiion Section
    internal var score : Int
    internal var discardPile : UIImage
    internal var winnersPile : UIImage
    internal var drawingDeck : UIImage
    internal var hand : UIImage
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = UIImage()
        self.winnersPile = UIImage()
        self.drawingDeck = UIImage()
        self.hand = UIImage()
    }
    
    //Method
    func startGame() -> Void
    {
        
    }
    
    
}
