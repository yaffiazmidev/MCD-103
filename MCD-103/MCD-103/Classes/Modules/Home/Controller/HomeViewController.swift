//
//  HomeViewController.swift
//  MCD-101
//
//  Created by yaffi azmi on 28/05/19.
//  Copyright © 2019 yaffi azmi. All rights reserved.
//

import UIKit

private let ProductIdentifier = "ProductCollectionViewCell"

class HomeViewController: UIViewController {
    
    let filterButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "TuneItem"), for: .normal)
        return button
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "SearchItem"), for: .normal)
        return button
    }()
    
    let menuButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "MenuItem"), for: .normal)
        return button
    }()
    
    var Homeptoduct: [Product] = Catalog.products

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        setupNav()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: ProductIdentifier, bundle: nil), forCellWithReuseIdentifier: ProductIdentifier)
    }
    
    func setupNav() {
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = .black
        self.navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: filterButton), UIBarButtonItem(customView: searchButton)]
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menuButton)
    }
}

extension HomeViewController: UICollectionViewDelegate {
    
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Homeptoduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductIdentifier, for: indexPath) as! ProductCollectionViewCell
        let productItem = Homeptoduct[indexPath.item]
        cell.productImage.image = UIImage(named: "\(productItem.imageName)")
        cell.productName.text = productItem.productName
        cell.productPrice.text = productItem.price
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.collectionView.frame.width - (8 * 3)) / 2
        let height = self.collectionView.frame.height / 3.5
        return CGSize(width: width, height: height)
    }
}
