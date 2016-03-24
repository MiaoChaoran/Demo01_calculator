//
//  ViewController.swift
//  Demo01_calculator
//
//  Created by 20131105796MCR on 16/3/24.
//  Copyright © 2016年 20131105796MCR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func add(sender: AnyObject) {
        //将输入的 字符串 转换为 整型
         var number1 = (textField1.text! as NSString).intValue
         var number2 = (textField2.text! as NSString).intValue
        
        // 将整型 进行运算
        var sum = number1 + number2
        // 将 整型 转换为 字符串 并将给文本框显示
        resultLable.text = String(sum)
    }
}

