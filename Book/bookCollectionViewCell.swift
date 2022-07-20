//
//  bookCollectionViewCell.swift
//  Book
//
//  Created by 박시현 on 2022/07/20.
//

import UIKit

class bookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
        
    func configureCell(data: Book) {
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        titleLabel.textColor = .white
        titleLabel.textAlignment = .left
        
        rateLabel.font = .boldSystemFont(ofSize: 10)
        rateLabel.text = "\(data.rate)"
        rateLabel.textColor = .white
        // UIImage(systemName:)으로하면 안되고 UIImage(named:)로 해야한다. 내가 에셋에 넣은 이미지 쓸 때 named: 로 하기!! 
        bookImageView.image = UIImage(named: data.title)
        bookImageView.layer.cornerRadius = 25
        bookImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
    }
}
