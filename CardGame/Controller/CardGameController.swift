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
    override func viewDidLoad()
    {
        let tempCard = Card()
        print (tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
}