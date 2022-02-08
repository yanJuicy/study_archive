//
//  ViewController.swift
//  ImageViewChallenge
//
//  Created by 이한주 on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    var numImage: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = UIImage(named: "1.png")!
    }

    @IBAction func showPrevImage(_ sender: Any) {
        numImage -= 1
        if numImage < 1 {
            numImage = 6
        }
        let imgName = "\(numImage).png"
        imgView.image = UIImage(named: imgName)
        
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        numImage += 1
        if numImage > 6 {
            numImage = 1
        }
        let imgName = "\(numImage).png"
        imgView.image = UIImage(named: imgName)
    }
    
}

