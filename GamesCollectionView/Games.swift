//
//  Games.swift
//  GamesCollectionView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import Foundation


class Games {
    var gameId: Int?
    var gameTitle: String?
    var gameImageName: String?
    var gamePrice: Double?
    
    
    init(gameId: Int? = nil, gameTitle: String? = nil, gameImageName: String? = nil, gamePrice: Double? = nil) {
        self.gameId = gameId
        self.gameTitle = gameTitle
        self.gameImageName = gameImageName
        self.gamePrice = gamePrice
    }
}
