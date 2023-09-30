//
//  ViewController.swift
//  UIKit-Intro
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-09-30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // create label and adding to main view
        let label = UILabel()
        label.text = "Hello World!!"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        // setup x and y constraints
        let centerX = NSLayoutConstraint(item: label,
                                         attribute: .centerX,
                                         relatedBy: .equal,
                                         toItem: view,
                                         attribute: .centerX,
                                         multiplier: 1,
                                         constant: 0)
        
        let centerY = NSLayoutConstraint(item: label,
                                         attribute: .centerY,
                                         relatedBy: .equal,
                                         toItem: view,
                                         attribute: .centerY,
                                         multiplier: 1,
                                         constant: 0)
        
        view.addConstraints([centerX, centerY])
    }


}

