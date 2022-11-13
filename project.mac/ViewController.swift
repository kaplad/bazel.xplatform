//
//  ViewController.swift

import Cocoa

class ViewController: NSViewController {
  @IBOutlet weak var label: NSTextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    label.stringValue = NativeBridge.sayHello()
  }
}

