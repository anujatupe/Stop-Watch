//
//  ViewController.swift
//  Stop Watch
//
//  Created by Anuja Tupe on 4/7/15.
//  Copyright (c) 2015 Gravity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    
    func showResult() {
        counter++
        println("\(counter)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("showResult"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

