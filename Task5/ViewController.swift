//
//  ViewController.swift
//  Task5
//
//  Created by 三浦　一真 on 2021/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    var alertController: UIAlertController!
    
    func alert(title:String, message:String) {
        alertController = UIAlertController(title: title,
                                            message: message,
                                            preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK",
                                                style: .default,
                                                handler: nil))
        present(alertController, animated: true)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        guard let num1 = Double(textField1.text!) else {
            alert(title: "課題5",
                  message: "割られる数を入力してください。")
            return
        }
        guard let num2 = Double(textField2.text!) else {
            alert(title: "課題5",
                  message: "割る数を入力してください。")
            return
        }
        guard textField2.text != "0" else {
            alert(title: "課題5",
                  message: "割る数には0を入力しないでください。")
            return
        }
        let result = num1 / num2
        resultLabel.text = String(result)
    }
}

