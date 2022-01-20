//
//  ViewController.swift
//  PropertyAnimator
//
//  Created by MutasemW on 2022-01-20.
//

import UIKit

class ViewController: UIViewController {
    let animator = UIViewPropertyAnimator(duration: 1, curve: .linear)
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imgPlanet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 0
        configurSetUI()
        configurEnd()
    }
    func configurSetUI() {
        imgPlanet.alpha = 0.0
        imgPlanet.transform = CGAffineTransform(scaleX: 0.1, y: 0.01)
    }

    func configurEnd(){
        animator.addAnimations {
            self.imgPlanet.alpha = 3.0
            self.imgPlanet.transform = CGAffineTransform(scaleX: 3, y: 3)
            
        }
        animator.addAnimations({
            self.imgPlanet.frame.origin.y = -200
        }, delayFactor: 0.5)
        
    }
    
    @IBAction func sliderSlipped(_ sender: UISlider) {
        
        animator.fractionComplete = CGFloat(sender.value)
    }
}

