//
//  ViewController.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Player = player(name: "DirtyLaundry21", hp: 110, attackPower: 20)
        
        playerHPLabel.text = "\(Player.hp)"
        
        
        
        generateRandomEnemy()
    }

    func generateRandomEnemy () {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            Enemy = kimara(startingHP: 50, attackPower: 12)
        }
        else {
            Enemy = devilWizard(startingHP: 60, attackPower: 15)
        }
        
        enemyHPLabel.text = "\(Enemy.hp) HP"
        
        enemyImage.hidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHPLabel: UILabel!
    
    @IBOutlet weak var enemyHPLabel: UILabel!

    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    @IBAction func chestTapped(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
       NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        if Enemy.attemptAttack(Player.attackPower) {
            printLabel.text = "Attacked \(Enemy.type) for \(Player.attackPower) HP"
            enemyHPLabel.text = "\(Enemy.hp) HP"
        }
        else {
            printLabel.text = "Attack was unsuccesful!"
        }
        
        if let loot = Enemy?.dropLoot(){
            chestMessage = "\(Player.name) found \(loot)"
            chestButton.hidden = false
            Player.addItemToInventory(loot)
        }
        
        if !Enemy.isAlive {
            enemyHPLabel.text = ""
            printLabel.text = "Killed \(Enemy.type)"
            enemyImage.hidden = true 
        }
    }
    var Player: player!
    var Enemy: enemy!
    var chestMessage: String?
    
    
}

