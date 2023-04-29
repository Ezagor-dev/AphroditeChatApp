//
//  ViewController.swift
//  AphroditeChat
//
//  Created by Ezagor on 28.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = ""
        var charIndex = 0
        
        let titleText = "⚕Aphrodite"
        for letter in titleText{
            print(charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
            
        }
        
    }


}

