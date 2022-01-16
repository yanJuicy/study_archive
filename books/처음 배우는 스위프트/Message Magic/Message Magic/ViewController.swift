//
//  ViewController.swift
//  Message Magic
//
//  Created by 이한주 on 2022/01/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var userInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputLabel.text = "Hey, Frank!"
    }
    
    @IBAction func displayToLabel() {
        outputLabel.text = userInput.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

