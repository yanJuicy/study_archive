//
//  ViewController.swift
//  MyAlbum
//
//  Created by 이한주 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은 ₩ \(currentValue) 입니다."
        
        // create alert
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        // create action button
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.refresh()
        })
        alert.addAction(action)
        // view alert in screen
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "₩ \(currentValue)"
    }
 
    
}

