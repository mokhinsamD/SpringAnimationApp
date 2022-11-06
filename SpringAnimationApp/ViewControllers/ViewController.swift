//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Дарина Самохина on 02.11.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getAnimation()

    @IBAction func runButtonDidPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}


