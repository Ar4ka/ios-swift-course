//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by René Jürgens on 30.12.22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let myLabel = UILabel()
    
    let width = view.frame.size.width
    let height = view.frame.size.height
    
    myLabel.text = "Test Label"
    myLabel.textAlignment = .center
    myLabel.frame = CGRect(x: width * 0.5 - ( width * 0.8 * 0.5 ), y: height * 0.5 - 50, width: width * 0.8, height: 50)
    
    view.addSubview(myLabel)
    
  }


}

