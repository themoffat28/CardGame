//
//  Card.swift
//  CardGame
//
//  Created by Moffat, Braeden on 10/25/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import UIKit

class Card
{
    
    internal var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(_ isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}
