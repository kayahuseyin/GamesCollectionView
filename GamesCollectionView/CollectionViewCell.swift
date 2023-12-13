//
//  CollectionViewCell.swift
//  GamesCollectionView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import UIKit

protocol CollectionViewCellProtocol {
    func addToBasket(indexPath:IndexPath)
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var gamePriceLabel: UILabel!
    @IBOutlet var gameNameLabel: UILabel!
    @IBOutlet var gameImageView: UIImageView!
    
    var cellProtocol: CollectionViewCellProtocol?
    var indexPath: IndexPath?
    
    @IBAction func addToBasketButton(_ sender: UIButton) {
    
        cellProtocol?.addToBasket(indexPath: indexPath!)
        
    }
    
}
