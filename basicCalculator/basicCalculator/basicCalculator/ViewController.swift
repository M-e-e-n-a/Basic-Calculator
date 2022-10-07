//
//  ViewController.swift
//  basicCalculator
//
//  Created by ISEAPLAB20 on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathOp = false
    var operation = 0
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func operatorBtn(_ sender: UIButton)
    {
        if calcLabel.text != "" && sender.tag != 16 && sender.tag != 15
        {
            previousNumber = Double(calcLabel.text!)!
            if sender.tag == 11
            { //addition

                calcLabel.text="+"            }
            else if sender.tag == 12
            { //subtraction
                calcLabel.text = "-"
            }
            else if sender.tag == 13
            { //division
                calcLabel.text="/"
            }
            else if sender.tag == 14
            { //multiplication
                calcLabel.text="*"
            }
            operation = sender.tag
            performMathOp=true
        }
        else if sender.tag == 15
        { //equal
            if operation == 11
            {
                calcLabel.text=String(previousNumber+numberOnScreen)
            }
            else if  operation == 12
            {
                calcLabel.text=String(previousNumber-numberOnScreen)
            }
            else if operation == 13
            {
                calcLabel.text=String(previousNumber/numberOnScreen)
            }
            else if operation==14
            {
                calcLabel.text=String(previousNumber*numberOnScreen)
            }
        }
        else if sender.tag == 16
        {//clear
            calcLabel.text=""
            previousNumber=0
            numberOnScreen=0
            operation=0
        }
        
    }
    
    
    @IBAction func operandBtn(_ sender: UIButton) {
        
        if performMathOp == true{
            calcLabel.text = String(sender.tag-1)
            numberOnScreen = Double(calcLabel.text!)!
            performMathOp = false
        }
        else{
            calcLabel.text=calcLabel.text! + String(sender.tag-1)
            numberOnScreen=Double(calcLabel.text!)!
        }
    }
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

