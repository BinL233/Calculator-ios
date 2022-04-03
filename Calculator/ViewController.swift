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
    var output:Double = 0
    var dOutput:Double = 0

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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "\(presentNum)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func zeroAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 0
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 0
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10
                display.text = "\(nextNum)"
            }
        }
        
        else {
            if presentNum == 0 {
                presentNum = 0
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func oneAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 1
            display.text = "\(presentNum)"
            state = "null"
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 1
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 1
                display.text = "\(nextNum)"
            }
        }
        
        else {
            if presentNum == 0 {
                presentNum = 1
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 1
                display.text = "\(presentNum)"
            }
        }
    }
    @IBAction func twoAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 2
            display.text = "\(presentNum)"
            state = "null"
       
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 2
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 2
                display.text = "\(nextNum)"
            }
        }
        
        else {
            if presentNum == 0 {
                presentNum = 2
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 2
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func threeAct(_ sender: UIButton) {
        
        if state == "reset" {
            presentNum = 3
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 3
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 3
                display.text = "\(nextNum)"
            }
        }
        
        
        
        else {
            if presentNum == 0 {
                presentNum = 3
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 3
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func fourAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 3
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 4
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 4
                display.text = "\(nextNum)"
            }
        }
        
        
        else {
            if presentNum == 0 {
                presentNum = 4
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 4
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func fiveAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 5
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 5
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 5
                display.text = "\(nextNum)"
            }
        }
        
        
        else {
            if presentNum == 0 {
                presentNum = 5
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 5
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func sixAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 6
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 6
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 6
                display.text = "\(nextNum)"
            }
        }
    
        
        else {
            if presentNum == 0 {
                presentNum = 6
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 6
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func sevenAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 7
            display.text = "\(presentNum)"
            state = "null"
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 7
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 7
                display.text = "\(nextNum)"
            }
        }
        

        
        else {
            if presentNum == 0 {
                presentNum = 7
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 7
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func eightAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 8
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null"  {
            if nextNum == 0 {
                nextNum = 8
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 8
                display.text = "\(nextNum)"
            }
        }
        
        
        else {
            if presentNum == 0 {
                presentNum = 8
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 8
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func nineAct(_ sender: UIButton) {
        if state == "reset" {
            presentNum = 9
            display.text = "\(presentNum)"
            state = "null"
            
        }
        
        else if state != "null" {
            if nextNum == 0 {
                nextNum = 9
                display.text = "\(nextNum)"
            }
            
            else {
                nextNum = (nextNum) * 10 + 9
                display.text = "\(nextNum)"
            }
        }
        
        
        else {
            if presentNum == 0 {
                presentNum = 9
                display.text = "\(presentNum)"
            }
            
            else {
                presentNum = (presentNum) * 10 + 9
                display.text = "\(presentNum)"
            }
        }
    }
    
    @IBAction func ACAct(_ sender: UIButton) {
        presentNum = 0
        display.text = "\(presentNum)"
        state = "null"
    }
    
    @IBAction func substructionAct(_ sender: UIButton) {
        state = "substruction"
        if state == "reset" {
            state = "continue"
        }
    }
    
    @IBAction func divideAct(_ sender: UIButton) {
        state = "divide"
        if state == "reset" {
            state = "continue"
        }
    }
    
    
    @IBAction func timesACt(_ sender: UIButton) {
        state = "times"
        if state == "reset" {
            state = "continue"
        }
    }
    
    @IBAction func plusAct(_ sender: UIButton) {
        state = "plus"
        if state == "reset" {
            state = "continue"
        }
        
    }
    
    
    
    @IBAction func equalAct(_ sender: UIButton) {
        if state == "substruction" {
            output = Double(presentNum - nextNum)
            display.text = "\(output)"
        }
        
        else if state == "divide" {
            output = presentNum / nextNum

            display.text = "\(output)"
            
        }
        
        else if state == "times" {
            output = Double(presentNum * nextNum)
            display.text = "\(output)"
        }
        
        else {
            output = Double(presentNum + nextNum)
            display.text = "\(output)"
        }
        
        
        state = "reset"
        presentNum = output
        nextNum = 0
    }
    
    
    
}

