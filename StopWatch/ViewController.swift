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
    
    var time : Double = 0.00
    var timer = Timer()
    var isPlaying = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playButtonTouched(_ sender: Any) {
    
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    
    @IBAction func pauseButtonTouched(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        timer.invalidate()
        isPlaying = false
        
    }
    
    @IBAction func resetButtonTouched(_ sender: Any) {
        time = 0.00
        timeLabel.text = String(time)
        timer.invalidate()
        playButton.isEnabled = true
        pauseButton.isEnabled = true
        isPlaying = false
        
    }
    
    
    func UpdateTimer() {
        time += 1
        timeLabel.text = String(format: "%.f", time)
    }

    
}

