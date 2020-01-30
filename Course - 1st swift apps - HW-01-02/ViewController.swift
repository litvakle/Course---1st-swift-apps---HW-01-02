//
//  ViewController.swift
//  Course - 1st swift apps - HW-01-02
//
//  Created by Lev Litvak on 29.01.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum colors {
        case red, yellow, green, none
    }
    
    var currentColor = colors.none
    let alphaValueForNotActiveViews: CGFloat = 0.3
    let alphaValueForActiveViews: CGFloat = 1
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = alphaValueForNotActiveViews
        yellowView.alpha = alphaValueForNotActiveViews
        greenView.alpha = alphaValueForNotActiveViews
        nextButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        switch currentColor {
        case .none:
            redView.alpha = alphaValueForActiveViews
            nextButton.setTitle("Next", for: .normal)
            currentColor = .red
        case .red:
            redView.alpha = alphaValueForNotActiveViews
            yellowView.alpha = alphaValueForActiveViews
            currentColor = .yellow
        case .yellow:
            yellowView.alpha = alphaValueForNotActiveViews
            greenView.alpha = alphaValueForActiveViews
            currentColor = .green
        case .green:
            greenView.alpha = alphaValueForNotActiveViews
            redView.alpha = alphaValueForActiveViews
            currentColor = .red
        }
    }
}

