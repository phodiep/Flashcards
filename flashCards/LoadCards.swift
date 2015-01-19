//
//  LoadCards.swift
//  flashCards
//
//  Created by Pho Diep on 1/18/15.
//  Copyright (c) 2015 Pho Diep. All rights reserved.
//

import UIKit

func loadCards() -> [Card] {
    var cards = [Card]()
    
    cards += jsonCards()
    cards += gitCards()
    cards += swiftCards()
    
    cards.shuffle()
    return cards
}


func gitCards() -> [Card] {
    var cards = [Card]()
    var subject = "Git"
    
    var frontBack = [
        ["Create empty repo", "$ git init"]
        ]

    
    
    for item in frontBack {
        cards.append(Card(subject: subject, front: item[0], back: item[1]))
    }
    
    return cards
}

func swiftCards() -> [Card] {
    var cards = [Card]()
    var subject = "Swift"
    
    var frontBack = [
        ["optional", "abc?   may or may not exist"],
        ["forced unwrapping", "abc!   treat it as it will be there"],
        ["optional binding", "if let x = y { //do Z }   Z will only run if y contains a value"],
        ["optional downcasting", " x  as?  y"],
        ["forced downcasting", "x  as  y"]
    ]
    
    
    
    for item in frontBack {
        cards.append(Card(subject: subject, front: item[0], back: item[1]))
    }
    
    return cards
}


func jsonCards() -> [Card] {
    var cards = [Card]()
    var subject = "JSON"
    
    var frontBack = [
        ["JSON -> Array", "NSJSONSerialization. JSONObjectWithData (jsonData, options: nil, error: nil) as [ [String : AnyObject] ]"],
        ["JSON file -> data", " let jdata = NSData(contentsOfFile: path)    if let JSONArray = NSJSONSerial...(jData)      parse JSONArray"]
    ]
    
    
    
    for item in frontBack {
        cards.append(Card(subject: subject, front: item[0], back: item[1]))
    }
    
    return cards
}