//
//  ViewController.swift
//  HowManyTimes
//
//  Created by 이한주 on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func count_1UpToN(_ sender: Any) {
        output.text = ""
        var inputNumber = Int(input.text!)!
        
        for outputNumber in 1...inputNumber {
            output.text = "\(output.text!)\(outputNumber) \n"
        }
    }
    
    @IBAction func count_NDownTo1(_ sender: Any) {
        output.text = ""
        var inputNUmber = Int(input.text!)!
        while inputNUmber != 0 {
            output.text = "\(output.text!)\(inputNUmber) \n"
            inputNUmber -= 1
        }
        
    }
    
}

