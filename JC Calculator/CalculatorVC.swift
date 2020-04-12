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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStyles()
    }
    
    private func loadStyles() {
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
