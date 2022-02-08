//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 이한주 on 2022/01/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewcController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else {return}
        viewcController.name = "Gunetr"
        self.navigationController?.pushViewController(viewcController, animated: true)
    }

    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {
            return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunetr"
        self.present(viewController, animated: true, completion: nil)
        
        
    }
}

