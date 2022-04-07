//
//  ViewController.swift
//  Calculator
//
//  Created by Kaile Ying on 4/2/22.
//

import UIKit

class ViewController: UIViewController {
    var presentNum:Double = 0
    var nextNum:Double = 0
    var undetermine:Int?
    var state:String = "null"
    var state2:String = "null"
    var vertify:String = ""
    var output:Double = 0
    var dOutput:Double = 0
    var secret:Int = 0
    var code = [Int]()
    var codeVer:String = ""
//    var fractionCount:Int = 1
    var directAns:Bool = false

    @IBOutlet weak var AC: UIButton!
    
    @IBOutlet weak var negative: UIButton!
    
    @IBOutlet weak var percent: UIButton!
    
    @IBOutlet weak var divide: UIButton!
    
    @IBOutlet weak var times: UIButton!
    
    @IBOutlet weak var substruction: UIButton!
    
    @IBOutlet weak var plus: UIButton!
    
    @IBOutlet weak var equal: UIButton!
    
    @IBOutlet weak var zero: UIButton!
    
    @IBOutlet weak var point: UIButton!
    
    @IBOutlet weak var one: UIButton!
    
    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    @IBOutlet weak var four: UIButton!
    
    @IBOutlet weak var five: UIButton!
    
    @IBOutlet weak var six: UIButton!
    
    @IBOutlet weak var seven: UIButton!
    
    @IBOutlet weak var eight: UIButton!
    
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var display: UILabel!
    
    @IBOutlet weak var pi: UIButton!
    
    @IBOutlet weak var d: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "0"
        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    @IBAction func zeroAct(_ sender: UIButton) {
        code.append(0)
        
        if state2 == "point" {
            mainNumber(x: 0)
        }
        
        if display.text != "0" {
            mainNumber(x: 0)
        }
            
        if secret == 2 {
            secret = 3
            
        }
        else {
            secret = 0
        }
    }
    
    @IBAction func oneAct(_ sender: UIButton) {
        mainNumber(x: 1)
        code.append(1)
        if secret == 3 {
            secret = 4
        }
        
        else if secret == 5 {
            secret = 6
        }
        
        else {
            secret = 0
        }
    }
    
    @IBAction func twoAct(_ sender: UIButton) {
        mainNumber(x: 2)
        code.append(2)
        if secret == 1 {
            secret = 2
        }
        
        else {
            secret = 0
        }
    }
    
    @IBAction func threeAct(_ sender: UIButton) {
        mainNumber(x: 3)
        code.append(3)
        if secret == 4 {
            secret = 5
        }
        else {
            secret = 0
        }
    }
    
    @IBAction func fourAct(_ sender: UIButton) {
        mainNumber(x: 4)
        code.append(4)
        if secret == 6 {
            secret = 7
        }
        else {
            secret = 0
        }
    }
    
    @IBAction func fiveAct(_ sender: UIButton) {
        mainNumber(x: 5)
        code.append(5)
        secret = 1
    }
    
    @IBAction func sixAct(_ sender: UIButton) {
        mainNumber(x: 6)
        code.append(6)
        secret = 0
    }
    
    @IBAction func sevenAct(_ sender: UIButton) {
        mainNumber(x: 7)
        code.append(7)
        secret = 0
    }
    
    @IBAction func eightAct(_ sender: UIButton) {
        mainNumber(x: 8)
        code.append(8)
        secret = 0
    }
    
    @IBAction func nineAct(_ sender: UIButton) {
        mainNumber(x: 9)
        code.append(9)
        secret = 0
    }
    
    func mainNumber(x: Double) {
        display.font = UIFont.systemFont(ofSize: 45.0)
        
        if codeVer != "" {
            display.text = "0"
            code.removeAll()
            codeVer = ""
        }
        
        if display.text == "0" {
            display.text = ""
        }
        
        if display.text == "YOUZI I LOVE YOU !!!" {
            display.text = ""
        }
        
        else if display.text == "INCORRECT CODE" {
            display.text = ""
        }
        
        if vertify == display.text {
            display.text = ""
            
            if state2 == "reset" {
                presentNum = 0
                nextNum = 0
            }
            
            else if state2 == "continue" {
                nextNum = 0
            }
        }
        
        if state2 == "reset" {
            display.text! += String(x.clean)
            presentNum = Double(display.text!)!
        }
        
        else if state2 == "continue" {
            display.text! += String(x.clean)
            nextNum = Double(display.text!)!
        }
        
        
        else if state != "null"{
            display.text! += String(x.clean)
            nextNum = Double(display.text!)!
        }
        
        else {
            display.text! += String(x.clean)
            presentNum = Double(display.text!)!
        }
    

    }
    
    
    @IBAction func pointAct(_ sender: UIButton) {
        secret = 0
        if state2 == "reset" {
            display.text = "0"
            presentNum = 0
            nextNum = 0
        }
        
        else if state2 == "continue" {
            display.text = "0"
            nextNum = 0
        }
        
        for x in display.text! {
            if x == "." {
                return
            }
        }
        display.text! += "."
    }
    
    @IBAction func piAct(_ sender: UIButton) {
        secret = 0
        if display.text == "" {
            mainNumber(x: 3.14159265358979323846)
        }
        
        else {
            let num:Double = 3.14159265358979323846 * Double(display.text!)!
            
            display.text = ""
            mainNumber(x: num)
        }
    }
    
    
    @IBAction func dAct(_ sender: UIButton) {
        if secret == 7 {
            display.text = "YOUZI I LOVE YOU !!!"
            display.font = UIFont.systemFont(ofSize: 35.0)
            display.textColor = UIColor(red: 242/255, green: 235/255, blue: 250/255, alpha: 1.0)
            view.backgroundColor = UIColor(red: 171/255, green: 108/255, blue: 154/255, alpha: 1.0)
            secret = 0
        }
        
        else {
            for x in code {
                codeVer += String(x)
            }
            
            if codeVer == "114514" {
                display.font = UIFont.systemFont(ofSize: 25.0)
                display.text = "哼哼哼~啊啊啊啊啊啊啊啊!!!"
            }
            
            else if codeVer == "20001127" {
                display.font = UIFont.systemFont(ofSize: 25.0)
                display.text = "这是柚柚的生日！"
            }
            
            else if codeVer == "20020227" {
                display.font = UIFont.systemFont(ofSize: 25.0)
                display.text = "这是乐乐的生日！"
            }
            
            else if codeVer == "20210228" {
                display.font = UIFont.systemFont(ofSize: 25.0)
                display.text = "这是乐乐和柚柚在一起的日子！"
            }
            
            else {
                code.removeAll()
                codeVer = ""
                secret = 0
                display.text = "INCORRECT CODE"
                display.font = UIFont.systemFont(ofSize: 35.0)
            }
            
        }
        
    }
    
    
    @IBAction func ACAct(_ sender: UIButton) {
        code.removeAll()
        codeVer = ""
        secret = 0
        display.font = UIFont.systemFont(ofSize: 45.0)
        presentNum = 0
        display.text = "0"
        presentNum = Double(display.text!)!
        nextNum = Double(display.text!)!
        state = "null"
        state2 = "null"
        directAns = false
    }
    
    @IBAction func substructionAct(_ sender: UIButton) {
        secret = 0
        display.font = UIFont.systemFont(ofSize: 45.0)
        vertify = display.text!
        state = "substruction"
        if directAns == true {
            equalf2()
        }
        
        if state2 == "reset" {
            vertify = display.text!
            state2 = "continue"
        }
        directAns = true
            
        
    }

    
    @IBAction func divideAct(_ sender: UIButton) {
        secret = 0
        display.font = UIFont.systemFont(ofSize: 45.0)
        vertify = display.text!
        state = "divide"
        if directAns == true {
            equalf2()
        }
        
        if state2 == "reset" {
            vertify = display.text!
            state2 = "continue"
        }
        directAns = true
        

    }
    
    
    @IBAction func timesACt(_ sender: UIButton) {
        secret = 0
        display.font = UIFont.systemFont(ofSize: 45.0)
        vertify = display.text!
        state = "times"
        if directAns == true {
            equalf2()
        }
        
        if state2 == "reset" {
            vertify = display.text!
            state2 = "continue"
        }
        directAns = true


    }
    
    @IBAction func plusAct(_ sender: UIButton) {
        secret = 0
        display.font = UIFont.systemFont(ofSize: 45.0)
        vertify = display.text!
        state = "plus"
        if directAns == true {
            equalf2()
        }
        
        if state2 == "reset" {
            vertify = display.text!
            state2 = "continue"
        }
        directAns = true

        
        
    }
    
    
    
    @IBAction func equalAct(_ sender: UIButton) {
        secret = 0
        equalf()
    }
    
    
    func equalf() {
        display.font = UIFont.systemFont(ofSize: 45.0)
        if state == "substruction" {
            output = Double(presentNum - nextNum)
            display.text = "\(output.clean)"
        }
        
        else if state == "divide" {
            output = presentNum / nextNum

            display.text = "\(output.clean)"
            
        }
        
        else if state == "times" {
            output = Double(presentNum * nextNum)
            display.text = "\(output.clean)"
        }
        
        else {
            output = Double(presentNum + nextNum)
            display.text = "\(output.clean)"
        }
        
        
        state = "null"
        state2 = "reset"
        directAns = false
        presentNum = output
        nextNum = 0
    }
    
    
    func equalf2() {
        display.font = UIFont.systemFont(ofSize: 45.0)
        if state == "substruction" {
            output = Double(presentNum - nextNum)
            display.text = "\(output.clean)"
        }
        
        else if state == "divide" {
            output = presentNum / nextNum

            display.text = "\(output.clean)"
            
        }
        
        else if state == "times" {
            output = Double(presentNum * nextNum)
            display.text = "\(output.clean)"
        }
        
        else {
            output = Double(presentNum + nextNum)
            display.text = "\(output.clean)"
        }
        
        
        state = "null"
        state2 = "reset"
        directAns = true
        presentNum = output
        nextNum = 0
    }
       
}

extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}





