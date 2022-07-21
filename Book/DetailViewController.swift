//
//  DetailViewController.swift
//  Book
//
//  Created by 박시현 on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    static let identifier = "DetailViewController"
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let vc = sb.instantiateViewController(withIdentifier: "webViewController") as! webViewController
//        let nav = UINavigationController(rootViewController: vc)
//        nav.modalPresentationStyle = .fullScreen
////        vc.modalPresentationStyle = .fullScreen
//        self.present(nav, animated: true)
        
//        self.navigationController?.popViewController(animated: true)
//        print("back")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
