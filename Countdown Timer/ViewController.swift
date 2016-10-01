//
//  ViewController.swift
//  Countdown Timer
//
//  Created by Timothy Myers on 9/25/16.
//  Copyright © 2016 Denver Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func startTimer(_ sender: AnyObject) {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTimer(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    func runTimer(){
        if (time > 0){
            time -= 1
            timeLabel.text = String(time)
        }else{
            timer.invalidate()
        }
        
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        timeLabel.text = "210"
        time = 210
    }
    
    @IBAction func addTenSeconds(_ sender: AnyObject) {
        
        time += 10
        
        timeLabel.text = String(time)

    }
    
    @IBAction func subTenSeconds(_ sender: AnyObject) {
        
        if (time > 10){
            time -= 10
        }
        
        timeLabel.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}

