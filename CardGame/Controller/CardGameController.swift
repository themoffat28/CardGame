//
//  CardGameController.swift
//  CardGame
//
//  Created by Moffat, Braeden on 10/27/16.
//  Copyright © 2016 Moffat, Braeden. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var CardButton:
    UIButton!
    
    @IBOutlet weak var CardLabel:
    UILabel!
    
    private lazy var currentDeck =
    PlayingCardDeck()
    
    private lazy var clickCount = Int()

    override func viewDidLoad()
    {
        let tempCard = Card()
        print (tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    
   @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The card has been clicked \(clickCount) time(s)"
        CardLabel.text = words
    }
    
}
