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
    func deal(with hakem: Int) -> [Int: [Card]] {
        var playersWithTheirCards: [Int: [Card]] = [:]

        for turn in 0 ..< numberOfPlayers {
            var playerCards = getFirstFive(for: turn)
            let second = getFirstFour(for: turn)
            playerCards.append(contentsOf: second)
            let third = getSecondFour(for: turn)
            playerCards.append(contentsOf: third)

            var player = hakem + turn
            if player > 3 {
                player -= 4
            }

            playersWithTheirCards[player] = Array(playerCards)
        }

        return playersWithTheirCards
    }

    /// Get first five cards
    private func getFirstFive(for turn: Int) -> ArraySlice<Card> {
        let startIndex = turn * 5
        let endIndex = startIndex + 5
        return cards[startIndex ..< endIndex]
    }

    /// Get first four cards
    private func getFirstFour(for turn: Int) -> ArraySlice<Card> {
        let startIndex = (turn + 5) * 4
        let endIndex = startIndex + 4
        return cards[startIndex ..< endIndex]
    }

    /// Get second four cards
    private func getSecondFour(for turn: Int) -> ArraySlice<Card> {
        let startIndex = (turn + 9) * 4
        let endIndex = startIndex + 4
        return cards[startIndex ..< endIndex]
    }
}
