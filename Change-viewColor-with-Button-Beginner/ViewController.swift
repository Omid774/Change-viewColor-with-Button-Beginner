//
//  ViewController.swift
//  Change-viewColor-with-Button-Beginner
//
//  Created by Omid Heydarzadeh on 12/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Define the Button
    
    private let myButoon: UIButton = {
        let myButton = UIButton()
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("Change", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return myButton
    }()
    
    // Define the Colors
    
    let colors: [UIColor] = [
        UIColor.systemPink,
        UIColor.systemBlue,
        UIColor.systemGreen,
        UIColor.systemPurple,
        UIColor.systemOrange,
        UIColor.systemRed]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.black
        
        view.addSubview(myButoon)
        myButoon.addTarget(self, action: #selector(changeColor), for: UIControl.Event.touchUpInside)
        
        myButoon.frame = CGRect(x: 50,
                                y: 50,
                                width: 100,
                                height: 100)
        myButoon.center.x = view.bounds.width / 2
        myButoon.center.y = view.bounds.height / 2
    }

    // Define Methods
    
    @objc func changeColor () {
        view.backgroundColor = colors.randomElement()
    }

}

