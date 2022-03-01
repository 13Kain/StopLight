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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 80
        yellowLightView.layer.cornerRadius = 80
        greenLightView.layer.cornerRadius = 80

    }

    @IBAction func getNewLightButton() {
        if greenLightView.alpha < 1 {
            redLightView.alpha = 1
            newLightButton.setTitle("NEXT", for: .normal)
        } else if redLightView.alpha == 1 && yellowLightView.alpha == 0.35  {
            redLightView.alpha = 0.35
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.35
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.35
        }
        }
    
    
}

