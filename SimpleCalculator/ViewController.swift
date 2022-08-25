//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Hakan TOY on 24.08.2022.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var FirsText: UITextField!
    
    
    @IBOutlet weak var SeconText: UITextField!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Deneme değişikliği
    }
    

    @IBAction func sumClicked(_ sender: Any) {
        
        if let  firstNumber = Int(FirsText.text!) {
            if let secondNumber = Int(SeconText.text!) {
                
                let result = firstNumber + secondNumber
                ResultLabel.text = String(result)
            }
        }

      
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if let  firstNumber = Int(FirsText.text!) {
            if let secondNumber = Int(SeconText.text!) {
                
                let result = firstNumber - secondNumber
                ResultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let  firstNumber = Int(FirsText.text!) {
            if let secondNumber = Int(SeconText.text!) {
                
                let result = firstNumber * secondNumber
                ResultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let  firstNumber = Double(FirsText.text!) {
            if let secondNumber = Double(SeconText.text!),
            secondNumber != 0 {                
                let result = firstNumber / secondNumber
                ResultLabel.text = String(result)
            } else {
                if firstNumber == 0 {
                    ResultLabel.text = "Tanımsız"
                } else {
                    ResultLabel.text = "Sonsuz"
                }
            }
        }
    }
    
}

// kapsam ve güvenlik
