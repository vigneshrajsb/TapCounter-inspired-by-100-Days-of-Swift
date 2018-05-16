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
    // @IBOutlet var gesture: UILongPressGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.touchDown(_:)))
//        view.addGestureRecognizer(gesture)
     
       
       
        counter = 0
        setLabel()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
  
    
//    @objc func touchDown(_ gestureRecognizer: UILongPressGestureRecognizer) {
//
//
//        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed {
//            if timer.isValid == false {
//            timer  = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (timer) in
//                self.setLabel()
//            }
//            }
//        }
//        if gestureRecognizer.state == .ended        {
//            timer.invalidate()
//        }
//    }
    @IBAction func holdGesture(_ sender: UILongPressGestureRecognizer) {
        print("holdgesture")
    }
    
    
}

