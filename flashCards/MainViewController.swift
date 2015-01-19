//
//  MainViewController.swift
//  flashCards
//
//  Created by Pho Diep on 1/18/15.
//  Copyright (c) 2015 Pho Diep. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var cards: [Card]!

    var collectionView: UICollectionView!
    
    override func loadView() {
        
        let rootView = UIView(frame: UIScreen.mainScreen().bounds)
        rootView.backgroundColor = UIColor.blackColor()

        
        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        self.collectionView = UICollectionView(frame: rootView.bounds, collectionViewLayout: collectionViewFlowLayout)
        
        self.collectionView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        collectionViewFlowLayout.itemSize = CGSize(width: UIScreen.mainScreen().bounds.width, height: 200)
        
        
        rootView.addSubview(self.collectionView)
        
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self


        
        self.collectionView.registerClass(CardCell.self, forCellWithReuseIdentifier: "CARD_CELL")
        self.cards = loadCards()
    }


    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCellWithReuseIdentifier("CARD_CELL", forIndexPath: indexPath) as CardCell
        cell.backgroundColor = UIColor.purpleColor()
        
        cell.subject.text = cards[indexPath.row].subject
        cell.frontText.text = cards[indexPath.row].front
        cell.backText.text = cards[indexPath.row].back
        
        cell.frontText.hidden = false
        cell.backText.hidden = true
        cell.showFront = true
        
        return cell
        
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let cell = self.collectionView.cellForItemAtIndexPath(indexPath) as CardCell!
        cell.backgroundColor = UIColor.grayColor()
        
        switch cell.showFront {
            
        case true:
            cell.backgroundColor = UIColor.grayColor()
            cell.frontText.hidden = true
            cell.backText.hidden = false
            cell.showFront = false
        case false:
            cell.backgroundColor = UIColor.purpleColor()
            cell.frontText.hidden = false
            cell.backText.hidden = true
            cell.showFront = true
        default:
            break
        }
    }
    
}
