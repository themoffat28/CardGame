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
    internal var suit : String
    internal var color : UIColor
    internal var frontImage : UIImage
 
    override init()
    {
        self.frontImage = UIImage()
        self.color = UIColor.white
        self.rank = 0
        self.suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        frontImage = UIImage()
        color = UIColor.white
        rank = withRank
        suit = ofSuit
        super.init()
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
        
        let description = "This Playing Card has a face value of \(rank), the color \(color), and is the suit \(suit) \(facing)."
     
        return description
    }
    
    func getrank() -> Int
    {
        return self.rank
    }
    
    func setRank(_ rank : Int)
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
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
}
