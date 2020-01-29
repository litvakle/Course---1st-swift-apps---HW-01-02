//
//  ViewController.swift
//  Course - 1st swift apps - HW-01-02
//
//  Created by Lev Litvak on 29.01.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    enum colors {
        case red, yellow, green, none
    }
    
    var currentColor = colors.none
    let cornerRadiusForViews: CGFloat = 60
    let cornerRariusForButtons: CGFloat = 10
    let alphaValueForNotActiveViews: CGFloat = 0.3
    let alphaValueForActiveViews: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = cornerRadiusForViews
        yellowView.layer.cornerRadius = cornerRadiusForViews
        greenView.layer.cornerRadius = cornerRadiusForViews
        
        redView.alpha = alphaValueForNotActiveViews
        yellowView.alpha = alphaValueForNotActiveViews
        greenView.alpha = alphaValueForNotActiveViews
        nextButton.layer.cornerRadius = cornerRariusForButtons
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

