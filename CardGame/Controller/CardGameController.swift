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
    @IBOutlet weak var CardButton: UIButton!
    
    @IBOutlet weak var CardLabel: UILabel!
    
    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()

    override func viewDidLoad()
    {
       
    }
    
   @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The card has been clicked \(clickCount) time(s)"
        CardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            CardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            CardLabel.text = "This deck has been exhausted. - Reinitializing"
            self.currentDeck = PlayingCardDeck()
        }
    }
    
}
