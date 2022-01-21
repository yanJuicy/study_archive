//
//  ViewController.swift
//  MysteryOfEnteredNumber
//
//  Created by 이한주 on 2022/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputField: UITextField!
    @IBOutlet var outputField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCheckClicked() {
        var userInput: Int = Int(inputField.text!)!
        
        switch userInput {
        case 1:
            outputField.text = "You entered One, didn't you?"
        case 2:
            outputField.text = "You entered Two, didn't you?"
        case 3:
            outputField.text = "You entered Three, didn't you?"
        case 4:
            outputField.text = "You entered Four, didn't you?"
        default:
            outputField.text = "error"
        }
    }

}

