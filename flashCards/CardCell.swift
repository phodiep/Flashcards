//
//  CardCell.swift
//  flashCards
//
//  Created by Pho Diep on 1/18/15.
//  Copyright (c) 2015 Pho Diep. All rights reserved.
//

import UIKit

class CardCell: UICollectionViewCell {
    var subject = UILabel()
    var frontText = UILabel()
    var backText = UILabel()
    var showFront = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.subject)
        self.addSubview(self.frontText)
        self.addSubview(self.backText)
        
        self.subject.textColor = UIColor.whiteColor()
        self.frontText.textColor = UIColor.whiteColor()
        self.backText.textColor = UIColor.whiteColor()
        
        self.frontText.numberOfLines = 0
        self.backText.numberOfLines = 0
        
        self.subject.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.frontText.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.backText.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var views = [
            "subject" : self.subject,
            "frontText" : self.frontText,
            "backText" : self.backText]
        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-[subject]",
            options: nil, metrics: nil, views: views))

        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-16-[frontText]-8-|",
            options: nil, metrics: nil, views: views))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-16-[backText]-8-|",
            options: nil, metrics: nil, views: views))

        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-8-[subject(20)]-8-[frontText]-8-|",
            options: nil, metrics: nil, views: views))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-8-[subject(20)]-8-[backText]-8-|",
            options: nil, metrics: nil, views: views))

    
    }
    

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
