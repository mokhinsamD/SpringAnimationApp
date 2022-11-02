//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Дарина Самохина on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        updateLabelsValue()
    }

    @IBAction func runButtonDidPressed(_ sender: UIButton) {
        
        if sender.currentTitle == "Run" {
            sender.setTitle("Run \(animation.preset)", for: .normal)
        }
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.delay
        animationView.delay = animation.delay
        animationView.animate()
        
        updateLabelsValue()
        animation = Animation.getAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension ViewController {
    func updateLabelsValue() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
}

