//
//  ViewController.swift
//  StopLight
//
//  Created by Никита on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var newLightButton: UIButton!
    
    var status = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 80
        yellowLightView.layer.cornerRadius = 80
        greenLightView.layer.cornerRadius = 80

    }

    @IBAction func getNewLightButton() {
        newLightButton.setTitle("Next", for: .normal)
        status += 1
        
        switch status {
        case 1:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        case 2:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        default:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            status = 0
        }
    }
}

