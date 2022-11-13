//
//  ViewController.swift

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    label.text = NativeBridge.sayHello()
  }
}

