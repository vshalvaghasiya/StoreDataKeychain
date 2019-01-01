//
//  ViewController.swift
//  StoreDataKeychain
//
//  Created by Admin on 31/12/18.
//  Copyright © 2018 VISHAL. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
class ViewController: UIViewController {

    @IBOutlet weak var TXTUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func saveButtonClick(_ sender: UIButton) {
        if TXTUsername.text != "" {
            KeychainWrapper.standard.set("\(TXTUsername.text!)", forKey: "username")
            TXTUsername.text = ""
        }
    }
    
    @IBAction func showButtonClick(_ sender: UIButton) {
        let retrive = KeychainWrapper.standard.string(forKey: "username")
        if retrive != nil {
            let alert = UIAlertController(title: "", message: retrive, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

