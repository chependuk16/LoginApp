//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Мак Сим on 13.09.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientViewBackground()
        welcomeLabel.text = welcomeValue
    }
    
    private func setGradientViewBackground() {
        let gradientLayer = CAGradientLayer()
    
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.systemPink.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        gradientLayer.frame = view.frame
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
