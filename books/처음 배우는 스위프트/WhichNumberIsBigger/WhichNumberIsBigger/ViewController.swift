//
//  ViewController.swift
//  WhichNumberIsBigger
//
//  Created by 이한주 on 2022/01/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: Any) {
        let str = inputField.text!
        
        outputField.text = String(str.reversed())
        
    }
}

