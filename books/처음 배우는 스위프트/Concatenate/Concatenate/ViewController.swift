//
//  ViewController.swift
//  Concatenate
//
//  Created by 이한주 on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textInput1: UITextField!
    @IBOutlet var textInput2: UITextField!
    @IBOutlet var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func concatFunc(_ sender: Any) {
        output.text = textInput1.text! + textInput2.text!
    }
    
    @IBAction func addFunc(_ sender: Any) {
        output.text = String(Int(textInput2.text!)! + Int(textInput1.text!)!)
        
    }
}

