//
//  main.swift
//  Hokm
//
//  Created by Ali Mirzamani on 4/15/23.
//

import Foundation

var hokm = Hokm()
hokm.deal()

hokm.determineHokm()
if let roundHokm = hokm.hokm {
    print("Hokm is: \(roundHokm.type.emoji)")
}

hokm.play()
