//
//  ViewController.swift
//  naver webtoon
//
//  Created by 이한주 on 2022/02/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myInfo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myInfo.layer.borderWidth = 1
        myInfo.layer.borderColor = UIColor.gray.cgColor
        
    }


}

