//
//  Dealer.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

struct Dealer {

    // MARK: - Constants
    private let numberOfPlayers = 4
    private let cards: [Card]

    // MARK: - Initializers
    init(cards: [Card]) {
        self.cards = cards
    }

    // MARK: - Functions
    /// Responsible fo deal cards
    func deal() -> [Int: [Card]] {
        var playersWithTheirCards: [Int: [Card]] = [:]

        for player in 0 ..< numberOfPlayers {
            var playerCards = getFirstFive(for: player)
            let second = getFirstFour(for: player)
            playerCards.append(contentsOf: second)
            let third = getSecondFour(for: player)
            playerCards.append(contentsOf: third)

            playersWithTheirCards[player] = Array(playerCards)
        }

        return playersWithTheirCards
    }

    /// Get first five cards
    private func getFirstFive(for player: Int) -> ArraySlice<Card> {
        let startIndex = player * 5
        let endIndex = startIndex + 5
        return cards[startIndex ..< endIndex]
    }

    /// Get first four cards
    private func getFirstFour(for player: Int) -> ArraySlice<Card> {
        let startIndex = (player + 5) * 4
        let endIndex = startIndex + 4
        return cards[startIndex ..< endIndex]
    }

    /// Get second four cards
    private func getSecondFour(for player: Int) -> ArraySlice<Card> {
        let startIndex = (player + 9) * 4
        let endIndex = startIndex + 4
        return cards[startIndex ..< endIndex]
    }
}
