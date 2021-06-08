//
//  ViewController.swift
//  Tips_UISwitch
//
//  Created by Yasuko Namikawa on 2021/06/08.
//

import UIKit

class ViewController: UIViewController {
    
    // １番目のスイッチ
    let switch1:UISwitch = UISwitch(frame: CGRect(x: 100, y: 100 , width: 50, height: 30))
    // ２番目のスイッチ
    let switch2:UISwitch = UISwitch(frame: CGRect(x: 100, y: 200 , width: 60, height: 30))
    
    // ２番目のスイッチのラベル
    var label1: UILabel = UILabel(frame: CGRect(x: 250, y: 205, width: 42, height: 21))
    // ３番目のスイッチのラベル
    @IBOutlet var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // １番目のスイッチ
        switch1.isOn = true
        self.view.addSubview(switch1)
        
        // ２番目のスイッチとラベル
        switch2.onTintColor = UIColor.yellow
        switch2.thumbTintColor = UIColor.red
        switch2.addTarget(self, action: #selector(tapped1), for: UIControl.Event.valueChanged)
        self.view.addSubview(switch2)
        self.view.addSubview(label1)
        
        // ３番目のスイッチのラベル
        label2.text = "on"
    }
    
    // ２番目のスイッチ
    @objc func tapped1(_ sender:UISwitch){
        if sender.isOn {
            label1.text = "on"
        } else {
            label1.text = "off"
        }
    }
    
    // ３番目のスイッチ
    @IBAction func tapped2(_ sender:UISwitch){
        if sender.isOn {
            label2.text = "on"
        } else {
            label2.text = "off"
        }
    }


}

