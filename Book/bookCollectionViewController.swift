//
//  bookCollectionViewController.swift
//  Book
//
//  Created by 박시현 on 2022/07/20.
//

import UIKit


class bookCollectionViewController: UICollectionViewController {
    
    var bookList = BookInfo()
    var colorArray: [UIColor] = [.orange, .purple, .systemPink, .magenta, .green, .blue]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 코드로 컬렉션뷰 레이아웃 설정
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        
        layout.itemSize = CGSize(width: width / 2, height: (width / 2) * 1)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
       
        
      
    }


    // MARK: UICollectionViewDataSource

    // 1. 셀의 갯수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // bookInfo 구조체 안에 book이라는 배열의 갯수
        return bookList.book.count
    }
    
    // 2. 데이터 수정
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCollectionViewCell", for: indexPath) as! bookCollectionViewCell
        let data = bookList.book[indexPath.row]
        cell.configureCell(data: data)
        cell.backgroundColor = colorArray.randomElement()
        cell.layer.cornerRadius = 10
    

        
        return cell
    }

  

}
