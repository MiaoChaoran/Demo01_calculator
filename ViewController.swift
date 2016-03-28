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
        //将输入的 字符串 转换为 Double
         var value1 = (textField1.text! as NSString).doubleValue
         var value2 = (textField2.text! as NSString).doubleValue
        
        // 将 Double 进行运算
        var result = value1 + value2
        // 将Double 转换为 字符串 并将给文本框显示
        resultLable.text = String(format: "%f",result)
    }
    @IBAction func subtract(sender: AnyObject) {
        //将输入的 字符串 转换为 Double
        var value1 = (textField1.text! as NSString).doubleValue
        var value2 = (textField2.text! as NSString).doubleValue
        
        // 将 Double 进行运算
        var result = value1 - value2
        // 将Double 转换为 字符串 并将给文本框显示
        resultLable.text = String(format: "%f",result)
    }
    @IBAction func multiply(sender: AnyObject) {
        //将输入的 字符串 转换为 Double
        var value1 = (textField1.text! as NSString).doubleValue
        var value2 = (textField2.text! as NSString).doubleValue
        
        // 将 Double 进行运算
        var result = value1 * value2
        // 将Double 转换为 字符串 并将给文本框显示
        resultLable.text = String(format: "%f",result)
    }
    @IBAction func divide(sender: AnyObject) {
        //将输入的 字符串 转换为 Double
        var value1 = (textField1.text! as NSString).doubleValue
        var value2 = (textField2.text! as NSString).doubleValue
        
        // 将 Double 进行运算
        if value2 != 0 {
            var result = value1 / value2
            // 将Double 转换为 字符串 并将给文本框显示
            resultLable.text = String(format: "%f",result)
        } else {
            resultLable.text = "除数不能等于0"
        }
    }
    @IBAction func closeKeyboard1(sender: AnyObject) {
        textField1.resignFirstResponder()
    }
    @IBAction func closeKeyboard2(sender: AnyObject) {
        textField2.resignFirstResponder()
    }
}

