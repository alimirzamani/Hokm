//
//  CardValue.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

enum CardValue: CaseIterable {
    case ace
    case king
    case queen
    case jack
    case nine
    case eight
    case seven
    case six
    case five
    case four
    case three
    case two

    var symbol: String {
        switch self {
        case .ace:
            return "A"

        case .king:
            return "K"

        case .queen:
            return "Q"

        case .jack:
            return "J"

        case .nine:
            return "9"

        case .eight:
            return "8"

        case .seven:
            return "7"

        case .six:
            return "6"

        case .five:
            return "5"

        case .four:
            return "4"

        case .three:
            return "3"

        case .two:
            return "2"
        }
    }
}
