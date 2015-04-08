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
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func showResult() {
        counter++
        println("\(counter)")
        timerLabel.text = String(counter)
    }
    
    @IBAction func playTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("showResult"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        timerLabel.text = "0"
        counter = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

