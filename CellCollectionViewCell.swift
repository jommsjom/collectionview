//
//  CellCollectionViewCell.swift
//  collection view
//
//  Created by Jomms on 02/01/21.
//

import UIKit

class CellCollectionViewCell: UICollectionViewCell {
    
static let identifier = "cell"
    private let imgviw:UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Apple"))
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
    return img
    }()
    
override init(frame:CGRect){
        super.init(frame:frame)
    contentView.addSubview(imgviw)
    
  
    
        
    }
    
required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imgviw.frame = contentView.bounds
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        //imgviw.image = nil
    }
    
   
    
}
