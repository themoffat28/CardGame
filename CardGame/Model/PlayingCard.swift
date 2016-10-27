//
//  PlayingCard.swift
//  CardGame
//
//  Created by Moffat, Braeden on 10/25/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    private var frontImage : UIImage
    {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    
    override init()
    {
        super.init()
        frontImage = UIImage()
        color = UIColor()
        rank = 0
        suit = String()
    }
        
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " facing up."
        }
        else
        {
            facing = " facing down."
        }
        
        let description = "This Playing Card with a back image of \(self.getBackImage()) has a face value of \(rank), the color \(color), and is the suit \(suit) \(facing)."
     
        return description
    }
    
    func getrank() -> Int
    {
        return self.rank
    }
    
    func setRank(rank : Int)
    {
        self.rank = rank
    }
}
