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
    
    
    @IBAction func clearBtn(_ sender: Any) {
    }
    
    
    @IBAction func equalTo(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

