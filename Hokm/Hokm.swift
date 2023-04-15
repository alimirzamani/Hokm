//
//  Hokm.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

struct Hokm {
    private let cards: [Card] = {
        var cards = [Card]()
        for type in CardType.allCases {
            for value in CardValue.allCases {
                cards.append(Card(type: type, value: value))
            }
        }
        return cards
    }()

    func printCards() {
        for card in cards {
            print(card.symbol)
        }
    }
}
