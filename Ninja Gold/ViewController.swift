//
//  ViewController.swift
//  Ninja Gold
//
//  Created by Changtong Zhou on 7/7/16.
//  Copyright © 2016 Changtong Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    
    var total_score = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: " + String(total_score)
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buildingButtonPressed(sender: UIButton) {
        if sender.tag == 1{
            score = Int(arc4random_uniform(11)+10)
            farmLabel.text = "You earned " + String(score)
            if farmLabel.hidden == true{
                farmLabel.hidden = false
            }
            caveLabel.hidden = true
            houseLabel.hidden = true
            casinoLabel.hidden = true
        }
        
        if sender.tag == 2{
            score = Int(arc4random_uniform(6)+5)
            caveLabel.text = "You earned " + String(score)
            if caveLabel.hidden == true{
                caveLabel.hidden = false
            }
            farmLabel.hidden = true
            houseLabel.hidden = true
            casinoLabel.hidden = true

        }
        
        if sender.tag == 3{
            score = Int(arc4random_uniform(3)+2)
            houseLabel.text = "You earned " + String(score)
            if houseLabel.hidden == true{
                houseLabel.hidden = false
            }
            farmLabel.hidden = true
            caveLabel.hidden = true
            casinoLabel.hidden = true
        }
        
        if sender.tag == 4{
            score = -1 * Int(arc4random_uniform(51)) + Int(arc4random_uniform(51))
            if score < 0 {
                casinoLabel.text = "You lost " + String(score)
            }
            else{
                casinoLabel.text = "You earned " + String(score)
            }
            
            if casinoLabel.hidden == true{
                casinoLabel.hidden = false
            }
            farmLabel.hidden = true
            houseLabel.hidden = true
            houseLabel.hidden = true
        }
        
        total_score += score
        scoreLabel.text = "Score: " + String(total_score)
        
        print(sender.tag)
        print("This is the farm score: ",farmLabel.text)
        print("This is the cave score: ",caveLabel.text)
        print("This is the house score: ",houseLabel.text)
        print("This is the farm score: ", casinoLabel.text)
        
    }

    
    @IBAction func resetButtonPressed(sender: UIButton) {
        total_score = 0
        scoreLabel.text = "Score: " + String(total_score)
        print("This is the reset: ", scoreLabel.text)
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
    }
    


}

