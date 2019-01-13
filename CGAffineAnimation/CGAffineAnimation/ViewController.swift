//
//  ViewController.swift
//  CGAffineAnimation
//
//  Created by Ankit Jaiswal on 13/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var mainView: UIView!

    @IBOutlet weak var redButton: UIView!
    @IBOutlet weak var greenButton: UIView!
    @IBOutlet weak var yellowButton: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func arrowButtonAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            UIView.animate(withDuration: 1.0, animations: {
                self.gradientView.transform = CGAffineTransform.init(scaleX: 11, y: 11)
                self.mainView.transform = CGAffineTransform.init(translationX: 0, y: -77)
                self.arrowButton.transform = CGAffineTransform.init(rotationAngle: 180.degreesToRadians)
            }, completion: { (_) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.redButton.alpha = 1
                    self.greenButton.alpha = 1
                    self.yellowButton.alpha = 1
                })
            })
        } else {
            UIView.animate(withDuration: 1.0, animations: {
                self.gradientView.transform = .identity
                self.mainView.transform = CGAffineTransform.identity
                self.arrowButton.transform = .identity
                self.redButton.alpha = 0
                self.greenButton.alpha = 0
                self.yellowButton.alpha = 0
            }, completion: { (_) in
            })
        }
    }
    
}

extension BinaryInteger {
    var degreesToRadians: CGFloat { return CGFloat(Int(self)) * .pi / 180 }
}
