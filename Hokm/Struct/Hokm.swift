//
//  Hokm.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

struct Hokm {

    // MARK: - Constants
    private let cards: [Card] = {
        var cards = [Card]()
        for type in CardType.allCases {
            for value in CardValue.allCases {
                cards.append(Card(type: type, value: value))
            }
        }
        return cards
    }()

    // MARK: - Variables
    var playersWithTheirCards: [Int: [Card]] = [:]

    // MARK: - Initializers
    init() {
        deal()
    }

    // MARK: - Functions
    private mutating func deal() {
        let shuffledCards = cards.shuffled()
        let dealer = Dealer(cards: shuffledCards)
        playersWithTheirCards = dealer.deal()
    }
}
