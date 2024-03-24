//
//  ViewController.swift
//  lab6
//
//  Created by Sarvar Saidazov on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var message: String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
                    if let destinationVC = segue.destination as? SecondViewController {
                        destinationVC.receivedMessage = textField.text
                    }
                }
    }

    @IBAction func sendMessage(_ sender: UIButton) {
        print("sendMessage called")
        performSegue(withIdentifier: "toSecond", sender: self)
    }


}

