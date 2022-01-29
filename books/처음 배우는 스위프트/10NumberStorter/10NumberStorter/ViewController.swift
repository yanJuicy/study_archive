//
//  ViewController.swift
//  10NumberStorter
//
//  Created by 이한주 on 2022/01/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func checkNumbers(_ sender: Any) {
        var numArray: [Int] = [
            Int(textField1.text!)!,
            Int(textField2.text!)!,
            Int(textField3.text!)!,
            Int(textField4.text!)!,
            Int(textField5.text!)!,
            Int(textField6.text!)!,
            Int(textField7.text!)!,
            Int(textField8.text!)!,
            Int(textField9.text!)!,
            Int(textField10.text!)!,
        ]
        
        numArray.sort()
        print(numArray)
        
        textField1.text = "\(numArray[0])"
        textField2.text = "\(numArray[1])"
        textField3.text = "\(numArray[2])"
        textField4.text = "\(numArray[3])"
        textField5.text = "\(numArray[4])"
        textField6.text = "\(numArray[5])"
        textField7.text = "\(numArray[6])"
        textField8.text = "\(numArray[7])"
        textField9.text = "\(numArray[8])"
        textField10.text = "\(numArray[9])"
    }
}

