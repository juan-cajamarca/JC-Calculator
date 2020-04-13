//
//  CalculatorVC.swift
//  JC Calculator
//
//  Created by Juan David Cajamarca Acuña on 12/04/20.
//  Copyright © 2020 Juan David Cajamarca Acuña. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {
    
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonCE: UIButton!
    @IBOutlet weak var button1X: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonX: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var buttonMin: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var ButtonPoi: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var firstNumber = String()
    var lastNumber = String()
    var sign = Operations.none
    
    enum Operations {
        case addition
        case subtraction
        case multiplication
        case division
        case none
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStyles()
    }
    
    @IBAction func buttonCPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            label.text = String(label.text!.prefix(label.text!.count - 1))
        }
    }
    
    @IBAction func buttonCEPressed(_ sender: UIButton) {
        label.text = ""
    }
    
    @IBAction func button1XPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            let inv = 1/Double(label.text!)!
            label.text = String("\(inv)".prefix(6))
        }
    }
    
    @IBAction func buttonPlusPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            firstNumber = label.text!
            sign = Operations.addition
            label.text = ""
        }
    }
    
    @IBAction func buttonMinPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            firstNumber = label.text!
            sign = Operations.subtraction
            label.text = ""
        }
    }
    
    @IBAction func buttonXPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            firstNumber = label.text!
            sign = Operations.multiplication
            label.text = ""
        }
    }
    
    @IBAction func buttonDivPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            firstNumber = label.text!
            sign = Operations.division
            label.text = ""
        }
    }
    
    @IBAction func buttonEqualPressed(_ sender: UIButton) {
        if label.text!.count > 0 {
            lastNumber = label.text!
            label.text = calculate()
        }
    }
    
    @IBAction func button0Pressed(_ sender: UIButton) {
        if label.text! != "0" {
            label.text = label.text! + "0"
        }
    }
    
    @IBAction func buttonPointPressed(_ sender: UIButton) {
        if label.text!.count == 0 {
            label.text = "0."
        } else {
            if !aPointExists() {
                label.text = label.text! + "."
            }
        }
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        label.text = label.text! + "1"
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        label.text = label.text! + "2"
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        label.text = label.text! + "3"
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        label.text = label.text! + "4"
    }
    
    @IBAction func button5Pressed(_ sender: UIButton) {
        label.text = label.text! + "5"
    }
    
    @IBAction func button6Pressed(_ sender: UIButton) {
        label.text = label.text! + "6"
    }
    
    @IBAction func button7Pressed(_ sender: UIButton) {
        label.text = label.text! + "7"
    }
    
    @IBAction func button8Pressed(_ sender: UIButton) {
        label.text = label.text! + "8"
    }
    
    @IBAction func button9Pressed(_ sender: UIButton) {
        label.text = label.text! + "9"
    }
    
    private func aPointExists() -> Bool {
        return label.text!.contains(".")
    }
    
    private func calculate() -> String {
        var result = String()
        
        switch sign {
        case .addition:
            result = String(Double(firstNumber)! + Double(lastNumber)!)
        case .subtraction:
            result = String(Double(firstNumber)! - Double(lastNumber)!)
        case .multiplication:
            result = String(Double(firstNumber)! * Double(lastNumber)!)
        case .division:
            result = String(Double(firstNumber)! / Double(lastNumber)!)
        case .none:
            result = ""
        }
        
        return result
    }
    
    private func loadStyles() {
        label.text = ""
        
        buttonC.layer.cornerRadius = 25
        buttonCE.layer.cornerRadius = 25
        button1X.layer.cornerRadius = 25
        buttonDiv.layer.cornerRadius = 25
        button7.layer.cornerRadius = 25
        button8.layer.cornerRadius = 25
        button9.layer.cornerRadius = 25
        buttonX.layer.cornerRadius = 25
        button4.layer.cornerRadius = 25
        button5.layer.cornerRadius = 25
        button6.layer.cornerRadius = 25
        buttonMin.layer.cornerRadius = 25
        button1.layer.cornerRadius = 25
        button2.layer.cornerRadius = 25
        button3.layer.cornerRadius = 25
        buttonPlus.layer.cornerRadius = 25
        button0.layer.cornerRadius = 25
        ButtonPoi.layer.cornerRadius = 25
        buttonEqual.layer.cornerRadius = 25
    }
    
}
