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
    internal var rank : Int
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
    
    internal var suit : String
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
    
    internal var color : UIColor
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
    
    internal var frontImage : UIImage
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
        //frontImage = UIImage()
        color = UIColor.whiteColor()
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        //frontImage = UIImage()
        color = UIColor.whiteColor()
        
        rank = withRank
        suit = ofSuit
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
    //The modifier 'class' in front of the func means that this method is visible without creating an instance of the class in question.
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♣️","♦️","♠️"]
    }
}
