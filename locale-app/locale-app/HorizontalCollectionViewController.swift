//
//  HorizontalCollectionViewController.swift
//  locale-app
//
//  Created by Muhammad Akbar on 4/17/24.
//

import Foundation


 //HorizontalCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
import UIKit

//class HorizontalScrollViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    @IBOutlet weak var collectionView: UICollectionView!
//    
//    let imageNames = ["image1", "image2", "image3", "image4"] // Names of your images
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Set up collection view
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        
//        // Set up collection view layout
//        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            layout.scrollDirection = .horizontal
//        }
//    }
//    
//    // MARK: - UICollectionViewDataSource
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return imageNames.count
//    }
//    
////    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
////        cell.imageView.image = UIImage(named: imageNames[indexPath.item])
////        return cell
////    }
//    
//    // MARK: - UICollectionViewDelegateFlowLayout
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        // Adjust item size as needed
//        return CGSize(width: 200, height: collectionView.bounds.height)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        // Adjust spacing between items
//        return 10
//    }
//}

