//
//  enemy.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import Foundation

class enemy: character {
    
    var loot: [String] {
        get {
            return ["Rusty Dagger", "Cracked Butler"]
        }
    }
    
    var type: String {
        get {
            return "Grunt"
        }
    }
    
    func dropLoot () -> String? {
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
    }
}