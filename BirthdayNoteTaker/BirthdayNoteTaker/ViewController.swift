//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by René Jürgens on 31.12.22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var birthdayTextField: UITextField!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var birthdayLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedDate = UserDefaults.standard.object(forKey: "birthday")
    
    if let myName = storedName as? String{
      nameLabel.text = "Name: \(myName)"
    }
    
    if let myDate = storedDate as? String {
      birthdayLabel.text = "Birthday: \(myDate)"
    }
    
  }

  @IBAction func saveClicked(_ sender: Any) {
    
    UserDefaults.standard.set(nameTextField.text!, forKey: "name")
    UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")

    nameLabel.text = "Name: \(nameTextField.text!)"
    birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    
  }
  @IBAction func deleteClicked(_ sender: Any) {
    
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedDate = UserDefaults.standard.object(forKey: "birthday")
    
    
    if (storedName as? String) != nil {
      UserDefaults.standard.removeObject(forKey: "name")
      nameLabel.text = "Name: "
      
      
    }
    
    if (storedDate as? String) != nil {
      UserDefaults.standard.removeObject(forKey: "birthday")
      birthdayLabel.text = "Birthday: "
    }
    
  }
  
}

