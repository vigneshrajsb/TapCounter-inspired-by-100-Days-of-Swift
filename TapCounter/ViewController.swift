//
//  ViewController.swift
//  TapCounter
//
//  Created by Vigneshraj Sekar Babu on 5/14/18.
//  Copyright © 2018 Vigneshraj Sekar Babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    var counter : Int = 0
    var timer  = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create the gesture and assign target and selector
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.touchDown(_:)))
        
        //added the gesture to the recognizer
        view.addGestureRecognizer(gesture)
        
        //setup
        counter = 0
        setLabel()
    }
    

    
    @IBAction func tapPressed(_ sender: UIButton) {
        setLabel()
    }
    
    
    
    @IBAction func resetPressed(_ sender: UIBarButtonItem) {
        counter = 0
        counterLabel.text = "0"
    }
    
    
    func setLabel() {
        counter += 1
        counterLabel.text = String(counter)
    }
    
    
    //method called when the gesure is recognized
    // the if condition checks for the .began and .changed states and
    //fires a timer to loop through and increase the counter until
    // the time is invalidated when gesture end is recognized.
    @objc func touchDown(_ gestureRecognizer: UILongPressGestureRecognizer) {
        
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed {
            if timer.isValid == false {
                timer  = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (timer) in
                    self.setLabel()
                }
            }
        }
        if gestureRecognizer.state == .ended        {
            timer.invalidate()
        }
    }
    
    
}

