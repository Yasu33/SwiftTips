//
//  ViewController.swift
//  Tips_UILabel
//
//  Created by Yasuko Namikawa on 2021/06/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    
    var mode = 0
    var mode2 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label1.text = "Hello"
        attributedText()
        mutableAttributedText()
        fontChange()
        label5.text = "abc defg hijk lmnop qrs tuv wxyz"
        label6.text = "abc defg hijk lmnop qrs tuv wxyz"
        adjustsFontSize()
        shadow()
    }
    
    func attributedText() {
        let textAttributes: [NSAttributedString.Key : Any] = [
                    .font : UIFont.systemFont(ofSize: 24.0),
                    .foregroundColor : UIColor.yellow,
                    .strokeColor : UIColor.red,
                    .strokeWidth : -3.0
                ]
        let text = NSAttributedString(string: "Hello", attributes: textAttributes)
        label2.attributedText = text
    }
    
    func mutableAttributedText() {
        let stringAttributes1: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.blue,
            .font : UIFont.italicSystemFont(ofSize: 20.0)
        ]
        let text1 = NSAttributedString(string: "Hello", attributes: stringAttributes1)

        let stringAttributes2: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.black,
            .font : UIFont.boldSystemFont(ofSize: 20.0)
        ]
        let text2 = NSAttributedString(string: "Hello", attributes: stringAttributes2)
        
        let mutableAttributedString = NSMutableAttributedString()
        mutableAttributedString.append(text1)
        mutableAttributedString.append(text2)
        
        label3.attributedText = mutableAttributedString
    }
    
    func fontChange() {
        label4.text = "Hello"
        label4.font = UIFont(name: "Futura-Medium", size: 20)
        label4.textColor = UIColor(hue: 0.6, saturation: 0.8, brightness: 0.9, alpha: 0.8)
        label4.textAlignment = NSTextAlignment.center
    }
    
    @IBAction func lineBreakMode() {
        mode += 1
        
        switch mode % 6 {
        case 1:
            label5.numberOfLines = 1
            label5.lineBreakMode = NSLineBreakMode.byTruncatingHead
        case 2:
            label5.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        case 3:
            label5.lineBreakMode = NSLineBreakMode.byTruncatingTail
        case 4:
            label5.lineBreakMode = NSLineBreakMode.byClipping
        case 5:
            label5.numberOfLines = 2
            label5.lineBreakMode = NSLineBreakMode.byCharWrapping
        default:
            label5.numberOfLines = 2
            label5.lineBreakMode = NSLineBreakMode.byWordWrapping
        }
    }
    
    @ IBAction func adjustsFontSize() {
        mode2 = !mode2
        label6.adjustsFontSizeToFitWidth = mode2
    }
    
    func shadow() {
        label7.text = "Hello"
        label7.shadowColor = UIColor.gray
        label7.shadowOffset = CGSize(width: 2, height: 2)
    }
}

