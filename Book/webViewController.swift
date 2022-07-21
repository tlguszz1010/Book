//
//  webViewController.swift
//  Book
//
//  Created by 박시현 on 2022/07/21.
//

import UIKit
import Kingfisher

class webViewController: UIViewController {
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    let image = URL(string : "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjVfMjI4%2FMDAxNjU2MTQzNTY3NTE2.5OANiOcK-AlLt-Oyw-i_Osn1Y8jttRBfgxsUVSjJwKQg.ZAky_pisF7S76NCk15SD5XrHIFeEb6JzR9318rqr0Bsg.JPEG.walterup%2FIMG_1869.JPG&type=sc960_832")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.kf.setImage(with: image)
        backgroundImageView.contentMode = .scaleAspectFit // 스토리 보드에서 contentMode를 AspectFill로 설정해놔도, 코드로 AspectFit을 해주면 코드대로 이미지뷰가 뜬다.
        navigationItem.title = "Rooster"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(backbuttonClicked))
    }
    
    @objc func backbuttonClicked() {
        self.navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
