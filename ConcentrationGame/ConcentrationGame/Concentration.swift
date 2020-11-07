//
//  Concentration.swift
//  ConcentrationGame
//
//  Created by Ilyas on 06.11.2020.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    var indexOfOneOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int){
        if !cards[index].isMatched{
            if let matchingIndex = indexOfOneOnlyFaceUpCard,matchingIndex != index {
                if cards[matchingIndex].identyfier == cards[index].identyfier {
                    cards[matchingIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneOnlyFaceUpCard = nil
            } else {
                for flipDown in cards.indices {
                    cards[flipDown].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneOnlyFaceUpCard = index
            }
        }
    
    }
    init(numberOfPairsCards:Int){
        for _ in 1...numberOfPairsCards {
            let card = Card()
            cards += [card,card]
        }
        //cards = doRandomArray(cards)
    }
    func doRandomArray(_ array: [Card])-> [Card]{
        var myArray = [Card]()
        for _ in 0..<cards.count {
            let index = Int(arc4random_uniform(UInt32(cards.count)))
            myArray.append(cards[index])
            cards.remove(at:index)
            
        }
        
        
        return myArray
    }
}
