//
//  ViewController.swift
//  Awesome

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    let some = ObjCBridge();
    label.text = ObjCBridge.sayHello();
    // Do any additional setup after loading the view.
  }


}

