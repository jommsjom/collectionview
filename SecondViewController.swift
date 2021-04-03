//
//  SecondViewController.swift
//  collection view
//
//  Created by Jomms on 04/01/21.
//

import UIKit

class SecondViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    let abb = ["Apple","Orange"]
    let img:[UIImage] = [
    UIImage(named:"Apple")!,
    UIImage(named:"orange")!]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviw.dequeueReusableCell(withReuseIdentifier:"cell", for:indexPath) as! SecondCollectionViewCell
        cell.imagviw?.image = UIImage(named:"orange")
        cell.lbl?.text = "orange"
       // cell.lbl?.text = ab
        
        
         return cell
    }
    

    @IBOutlet weak var collectionviw:UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(collectionviw)
        collectionviw.dataSource = self
        collectionviw.delegate = self
        }

}
