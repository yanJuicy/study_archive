//
//  ViewController.swift
//  WhichNumber
//
//  Created by 이한주 on 2022/01/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var number1: UITextField!
    @IBOutlet var number2: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSortClicked() {
        if Int(number1.text!)! > Int(number2.text!)! {
            outputLabel.text = "\(number1.text!) is greater than \(number2.text!)"
        } else if Int(number1.text!)! < Int(number2.text!)! {
            outputLabel.text = "\(number1.text!) is smaller than \(number2.text!)"
        } else {
            outputLabel.text = "\(number1.text!) is equal to \(number2.text!)"
        }
    }
    
}

