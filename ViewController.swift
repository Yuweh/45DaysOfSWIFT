//
//  ViewController.swift
//  StopWatch
//
//  Created by Francis Jemuel Bergonia on 27/07/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var time = 0
    var timer = Timer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playButtonTouched(_ sender: Any) {
    
        timer = Timer.scheduledTimer(timeInterval: 0.75, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButtonTouched(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButtonTouched(_ sender: Any) {
        time = 0
        timer.invalidate()
    }
    
    
    func UpdateTimer() {
        time += 1
        timeLabel.text = String(time)
    }

    
}

