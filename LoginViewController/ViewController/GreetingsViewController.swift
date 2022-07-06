//
//  GreetingsViewController.swift
//  LoginViewController
//
//  Created by 19333717 on 06.07.2022.
//

import UIKit

class GreetingsViewController: UIViewController {

    @IBOutlet var greetingsLabel: UILabel!
    
    var user: User!
    
    private let primaryColor = UIColor(
        red: 116/255,
        green: 74/255,
        blue: 231/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 136/255,
        green: 206/255,
        blue: 208/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        greetingsLabel.text = "Welcome, \(user.person.fullName)!"
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
