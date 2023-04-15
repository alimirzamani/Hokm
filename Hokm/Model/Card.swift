//
//  Card.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

struct Card: Comparable {
    let type: CardType
    let value: CardValue

    var symbol: String {
        return "\(value.symbol)\(type.emoji)"
    }

    static func < (lhs: Card, rhs: Card) -> Bool {
        return lhs.value < rhs.value
    }
}
