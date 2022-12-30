//
//  ViewController.swift
//  WorstCalculatorEver
//
//  Created by René Jürgens on 30.12.22.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var inputTwo: UITextField!
  
  @IBOutlet weak var inputOne: UITextField!
  
  @IBOutlet weak var resultLable: UILabel!
  
  var result : Double = 0

  
  override func viewDidLoad() {
    super.viewDidLoad()
    resultLable.text = String(result);
    // Do any additional setup after loading the view.
  }
  @IBAction func plusButton(_ sender: Any) {
    let firstNumber = Double(inputTwo.text!)!
    let secondNumber = Double(inputOne.text!)!
    
    result = firstNumber + secondNumber
    
    resultLable.text = String(result)
  }
  
  
  @IBAction func minusButton(_ sender: Any) {
    let firstNumber = Double(inputTwo.text!)!
    let secondNumber = Double(inputOne.text!)!
    
    result = firstNumber - secondNumber
    
    resultLable.text = String(result)
  }
  @IBAction func multiplyButton(_ sender: Any) {
    let firstNumber = Double(inputTwo.text!)!
    let secondNumber = Double(inputOne.text!)!
    
    result = firstNumber * secondNumber
    
    resultLable.text = String(result)
  }
  @IBAction func divisionButton(_ sender: Any) {
    let firstNumber = Double(inputTwo.text!)!
    let secondNumber = Double(inputOne.text!)!
    
    result = firstNumber / secondNumber
    
    resultLable.text = String(result)
  }
  
}

