//
//  ViewController.swift
//  HW_1_2_new
//
//  Created by beksultan on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var theFirstRoundOfTrafficLights: UIView!
    
    @IBOutlet var theSecondRoundOfTrafficLights: UIView!
    @IBOutlet var theThirdRoundOfTrafficLights: UIView!

   
    @IBOutlet var startButton: UIButton!
    var counter = 0
    var timerCount = 0
    @IBOutlet var autoButton: UIButton!
    var timer:Timer = Timer()

    var timerCounting:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        theFirstRoundOfTrafficLights.layer.cornerRadius = theFirstRoundOfTrafficLights.frame.size.height / 2
    theFirstRoundOfTrafficLights.clipsToBounds = true
        
        theSecondRoundOfTrafficLights.layer.cornerRadius = theSecondRoundOfTrafficLights.frame.size.height / 2
        theSecondRoundOfTrafficLights.clipsToBounds = true
        
        theThirdRoundOfTrafficLights.layer.cornerRadius = theThirdRoundOfTrafficLights.frame.size.height / 2
        theThirdRoundOfTrafficLights.clipsToBounds = true
        
        theFirstRoundOfTrafficLights.alpha = 0.3
        theSecondRoundOfTrafficLights.alpha = 0.3
        theThirdRoundOfTrafficLights.alpha = 0.3
    }

   

    @IBAction func changeTheColorOfTheTrafficLightCirclesButton(_ sender: Any) {
    
    timerCounting = false
    counter += 1
        if counter == 1 {
            theFirstRoundOfTrafficLights.alpha = 1
            theSecondRoundOfTrafficLights.alpha = 0.3
            theThirdRoundOfTrafficLights.alpha = 0.3
        }
        else if counter == 2 {
            theFirstRoundOfTrafficLights.alpha = 0.3
            theSecondRoundOfTrafficLights.alpha = 1
            theThirdRoundOfTrafficLights.alpha = 0.3
        }
        
        else if counter == 3 {
            theFirstRoundOfTrafficLights.alpha = 0.3
            theSecondRoundOfTrafficLights.alpha = 0.3
            theThirdRoundOfTrafficLights.alpha = 1
        }
        
        else {
            counter = 0
        }
        if timerCounting == false {
            timer.invalidate()
        }

            startButton.setTitle("Next", for: .normal)
        }
    
 //а

   
    @IBAction func autoSwitchingOfTheTrafficLight(_ sender: Any) {
        startButton.setTitle("START", for: .normal)
        timerCounting = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerUpdate), userInfo: Date(), repeats: true)
    
    }
    
    
    @objc func timerUpdate(){
        timerCount  = timerCount + 1
        if timerCount > 1 && timerCount < 5 {
            theFirstRoundOfTrafficLights.alpha = 1
            theSecondRoundOfTrafficLights.alpha = 0.3
            theThirdRoundOfTrafficLights.alpha = 0.3
        }
        else if timerCount > 5 && timerCount < 10{
            theFirstRoundOfTrafficLights.alpha = 0.3
            theSecondRoundOfTrafficLights.alpha = 1
            theThirdRoundOfTrafficLights.alpha = 0.3
        }
        else if timerCount > 10 && timerCount < 15{
            theFirstRoundOfTrafficLights.alpha = 0.3
            theSecondRoundOfTrafficLights.alpha = 0.3
            theThirdRoundOfTrafficLights.alpha = 1
        }
        
        else if timerCount > 15 {
            timerCount = 0
        }
        
        
    }
    
}

