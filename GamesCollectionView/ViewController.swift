//
//  ViewController.swift
//  GamesCollectionView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var gameList = [Games]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let width = self.collectionView.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        design.minimumInteritemSpacing = 10 // Spacing between the items
        
        design.minimumLineSpacing = 10 // Minimum spacing to the bottom
        
        let cellWidth = (width-30)/2
        
        design.itemSize = CGSize(width: cellWidth, height: cellWidth*1.85)
        
        collectionView!.collectionViewLayout = design
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let game1 = Games(gameId: 1, gameTitle: "Crysis", gameImageName: "crysis", gamePrice: 15.99)
        let game2 = Games(gameId: 2, gameTitle: "Diablo 2", gameImageName: "diablo2", gamePrice: 15.99)
        let game3 = Games(gameId: 3, gameTitle: "Doom", gameImageName: "doom", gamePrice: 19.99)
        let game4 = Games(gameId: 4, gameTitle: "Far Cry", gameImageName: "farcry", gamePrice: 24.99)
        let game5 = Games(gameId: 5, gameTitle: "GTA 4", gameImageName: "gta4", gamePrice: 29.99)
        let game6 = Games(gameId: 6, gameTitle: "Half-Life 2", gameImageName: "halflife2", gamePrice: 34.99)
        let game7 = Games(gameId: 7, gameTitle: "Mortal Kombat", gameImageName: "mortalkombat", gamePrice: 19.99)
        let game8 = Games(gameId: 8, gameTitle: "Resistance", gameImageName: "resistance", gamePrice: 39.99)
        let game9 = Games(gameId: 9, gameTitle: "Sims 2", gameImageName: "sims2", gamePrice: 9.99)
        let game10 = Games(gameId: 10, gameTitle: "Tomb Raider", gameImageName: "tombraider", gamePrice: 27.99)
        let game11 = Games(gameId: 11, gameTitle: "World of Warcraft", gameImageName: "worldofwarcraft", gamePrice: 49.99)
        let game12 = Games(gameId: 12, gameTitle: "Zelda", gameImageName: "zelda", gamePrice: 39.99)

        gameList.append(game1)
        gameList.append(game2)
        gameList.append(game3)
        gameList.append(game4)
        gameList.append(game5)
        gameList.append(game6)
        gameList.append(game7)
        gameList.append(game8)
        gameList.append(game9)
        gameList.append(game10)
        gameList.append(game11)
        gameList.append(game12)
        
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, CollectionViewCellProtocol {
    func addToBasket(indexPath: IndexPath) { // Alert will be added
        
        let game = gameList[indexPath.row]
        print("\(game.gameTitle!) added to the basket")
        
        let alertController = UIAlertController(title: "Added to basket", message: "\(game.gameTitle!) is added to the basket", preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okayAction)
        
        self.present(alertController, animated: true)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let game = gameList[indexPath.row] // sirayla item'lar gelecek
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.gameNameLabel.text = game.gameTitle!
        cell.gamePriceLabel.text = "\(game.gamePrice!) $"
        cell.gameImageView.image = UIImage(named: game.gameImageName!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
                
        return cell
        
        
    }
    
}




