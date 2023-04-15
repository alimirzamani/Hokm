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
    private var playersWithTheirCards: [Int: [Card]] = [:]
    private var hakem: Int // For now hakem in the start is you

    // MARK: - Initializers
    init(hakem: Int = 0) {
        self.hakem = hakem
        deal()
    }

    // MARK: - Functions
    private mutating func deal() {
        let shuffledCards = cards.shuffled()
        let dealer = Dealer(cards: shuffledCards)
        playersWithTheirCards = dealer.deal(with: hakem)
    }
}
