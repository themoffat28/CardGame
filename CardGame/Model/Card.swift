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
    private var backImage : UIImage
    {
        get
        {
            return self.backImage
        }
        set (backImage)
        {
            self.backImage = backImage
        }
    }
    private var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
        backImage = UIImage()
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
            return backImage
    }
    func setBackImage(newImage : UIImage)
    {
        backImage = newImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}
