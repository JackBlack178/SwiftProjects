//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Ilyas on 06.11.2020.
//

import UIKit

class ViewController: UIViewController {

    var flipOver = 0 {
        didSet{
            flipsLabel.text = "Flips: \(flipOver)"
        }
    }
    
    var emojiCollection = ["🐶","🎃","👻","🐓","🐋","🐊","🐮","🦉","🐺","🦮","🦌"]
    
    var emojiDictionary = [Int:String]()
    
    func emojiIdentifier(for card : Card) -> String {
        if emojiDictionary[card.identyfier] == nil {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiCollection.count)))
            emojiDictionary[card.identyfier] = emojiCollection.remove(at: randomIndex)
            
            
        }
        
        return emojiDictionary[card.identyfier] ?? "?"
    }
    
    
   
    
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    lazy var game:Concentration = Concentration(numberOfPairsCards:(buttonCollection.count+1)/2)
    
    func updateViewFromModel() {
        for index in buttonCollection.indices {
            let button = buttonCollection[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emojiIdentifier(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.9989020228, green: 0.5835822225, blue: 0, alpha: 1)
            }
        }
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipOver += 1
        if let cardNumber = buttonCollection.firstIndex(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
    }
    
            
                        		    
    @IBOutlet weak var flipsLabel: UILabel!
}

