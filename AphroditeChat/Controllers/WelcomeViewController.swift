//
//  ViewController.swift
//  AphroditeChat
//
//  Created by Ezagor on 28.04.2023.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // I installed https://cocoapods.org/ 
        
        titleLabel.text = K.appName
        
        
//        titleLabel.text = ""
//        var charIndex = 0
//
//        let titleText = "⚕Aphrodite"
//        navigationItem.hidesBackButton = true
//        for letter in titleText{
//            print(charIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { timer in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//
//        }
        
    }


}

