//
//  ViewController.swift
//  collection view
//
//  Created by Jomms on 31/12/20.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionviw.dequeueReusableCell(withReuseIdentifier:CellCollectionViewCell.identifier, for:indexPath)
        //cell.transform = CGAffineTransform(scaleX: 2.0, y: 1.0)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //collectionviw.deselectItem(at:indexPath, animated: true)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "secondview") as! SecondViewController
         //vc.newsObj = newsObj
         navigationController?.pushViewController(vc,
         animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:view.frame.size.width - 350, height: view.frame.size.width - 350)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:5, left: 5, bottom: 5, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
  //  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
   
        
//  }
private let collectionviw =  UICollectionView(frame:.zero,collectionViewLayout:UICollectionViewFlowLayout())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(collectionviw)
        collectionviw.delegate = self
        collectionviw.dataSource = self
        collectionviw.register(CellCollectionViewCell.self, forCellWithReuseIdentifier:"cell")
      // collectionviw.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionviw.frame = view.bounds
    }
    

}

