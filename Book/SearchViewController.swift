//
//  SearchViewController.swift
//  Book
//
//  Created by 박시현 on 2022/07/21.
//

import UIKit
import Kingfisher

class SearchViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    let image = URL(string :"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTNfMjU1%2FMDAxNjMxNTIzNzA3Nzk5.vMbNeImdgdplujJtDfPOjbwlsi6LEbC0Q-ipM8qXrxkg.72yx7uQ4GdemgCirCjgVN0Gt34sK9AHeYv8jbSLcgAcg.JPEG.kyakya_4001%2F15110210A84F241CFA.jpg&type=sc960_832" )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ice man"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(backButtonClicked))
        //UIBarButtonItem(image:
        backgroundImageView.kf.setImage(with: image)
        // Do any additional setup after loading the view.
    }
    
    @objc func backButtonClicked() {
        self.dismiss(animated: true)
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
