//
//  CardType.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

enum CardType: CaseIterable {
    case heart
    case diamond
    case spade
    case club

    var emoji: String {
        switch self {
        case .heart:
            return "♥️"

        case .diamond:
            return "♦️"

        case .spade:
            return "♠️"

        case .club:
            return "♣️"
        }
    }
}
