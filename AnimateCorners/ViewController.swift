//
//  ViewController.swift
//  AnimateCorners
//
//  Created by Jonny on 6/16/17.
//  Copyright © 2017 Jonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var animatedView: UIView!
    
    private lazy var animator: UIViewPropertyAnimator = {
        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.8) {
            self.animatedView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            self.animatedView.layer.cornerRadius = self.animatedView.bounds.width / 2
        }
        animator.pauseAnimation()
        return animator
    }()
    
    @IBAction private func sliderDidChange(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}

