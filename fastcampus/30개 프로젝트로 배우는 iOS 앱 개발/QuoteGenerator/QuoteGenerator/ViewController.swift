//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by 이한주 on 2022/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(quote: "명언 1" , name: "이름 1"),
        Quote(quote: "명언 2" , name: "이름 2"),
        Quote(quote: "명언 3" , name: "이름 3"),
        Quote(quote: "명언 4" , name: "이름 4"),
        Quote(quote: "명언 5" , name: "이름 5"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(UInt32(quotes.count)))
        let quote = quotes[random].quote
        let name = quotes[random].name
        
        self.quoteLabel.text = quote
        self.nameLabel.text = name
        
    }
}

