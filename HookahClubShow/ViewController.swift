//
//  ViewController.swift
//  HookahClubShow
//
//  Created by macuser on 3/19/22.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = Timer()
    var secondsPassed = 0
    var totalTime = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let tagButton = sender.tag
        print(tagButton)
        timer.invalidate()
        
        totalTime = tagButton
        
        secondsPassed = 0
        
                
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerAction() {
        
        if secondsPassed < totalTime {
            secondsPassed += 1
            print(secondsPassed/totalTime)
        }
    }
    
        
        
        
    


}

