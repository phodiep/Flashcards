//
//  Shuffle.swift
//  flashCards
//
//  Created by Pho Diep on 1/18/15.
//  Copyright (c) 2015 Pho Diep. All rights reserved.
//

import Foundation

extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}