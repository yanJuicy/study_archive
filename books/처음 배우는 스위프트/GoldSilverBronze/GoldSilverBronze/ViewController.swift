//
//  ViewController.swift
//  GoldSilverBronze
//
//  Created by 이한주 on 2022/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var text1: UITextField!
    @IBOutlet var text2: UITextField!
    @IBOutlet var text3: UITextField!
    
    @IBOutlet var output1: UILabel!
    @IBOutlet var output2: UILabel!
    @IBOutlet var output3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClicked() {
        var a = Int(text1.text!)!
        var b = Int(text2.text!)!
        var c = Int(text3.text!)!
        
        var num1 = 0
        var num2 = 0
        var num3 = 0
        
        var nums: [Int] = [a, b, c]
        nums.sort()
        
        num1 = nums[0]
        num2 = nums[1]
        num3 = nums[2]
        
        output1.text = "\(num1)"
        output2.text = "\(num2)"
        output3.text = "\(num3)"
    }
}

