//
//  ViewController.swift
//  Alarm
//
//  Created by 이한주 on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    
    @IBOutlet var curTime: UILabel!
    @IBOutlet var selTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }


    @IBAction func picChange(_ sender: Any) {
        let datePickerView = sender as! UIDatePicker
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        selTime.text = "선택시간 \(formatter.string(from: datePickerView.date))"
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        curTime.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        curTime.text = "현재시간 \(formatter.string(from: date as Date))"
        
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (alarmTime == currentTime) {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
        
        
    }
 }

