//
//  Card.swift
//  ConcentrationGame
//
//  Created by Ilyas on 06.11.2020.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identyfier : Int
    
    static var identyfier = 0
    
    static func identyfierGenerator() -> Int {
        identyfier += 1
        return identyfier
    }
    init (){
        self.identyfier = Card.identyfierGenerator()
    }
}
