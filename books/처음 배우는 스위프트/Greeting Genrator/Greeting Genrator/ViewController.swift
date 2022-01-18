//
//  ViewController.swift
//  Greeting Genrator
//
//  Created by 이한주 on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var input: UITextField!
    @IBOutlet var output: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 뷰를 로딩한 다음 필요한 추가 작업 수행
    }
    
    @IBAction func displayGreeting() {
        output.text = "Hi, \(input.text!)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // 재생성할 수 있는 모든 자원 폐기
    }

}

