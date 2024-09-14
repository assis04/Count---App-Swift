//
//  ViewController.swift
//  Counter2
//
//  Created by Adalberto Nassu Pompolo on 31/08/24.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var ButtonCount: UIButton!
    @IBOutlet weak var ButtonReset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonReset.isEnabled = true
        congratsLabel.isHidden = true
    }
    
    @IBAction func ButtonReset(_ sender: UIButton) {
        counter = 0
        counterLabel.text = "Count \(counter)"
        congratsLabel.isHidden = true
        ButtonCount.isEnabled = true
        ButtonReset.isEnabled = false
    }
    
    @IBAction func didTapButtonCounter(_ sender: UIButton) {
        
        counter += 1
        counterLabel.text = "Count \(counter)"
    
        if counter >= 10 {
            congratsLabel.isHidden = false
            ButtonCount.isEnabled = false
            ButtonReset.isEnabled = true

        }
    }
}

