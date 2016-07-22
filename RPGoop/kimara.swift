//
//  kimara.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import Foundation

class kimara: enemy {
    
    let immuneMax = 15
    
    override var loot: [String] {
        get {
            return ["Tough Hide", "Kimara Venom","Rare Trident"]
        }
    }
    
    override var type: String{
        get{
            return "Kimara"
        }
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= immuneMax {
            return super.attemptAttack(attackPower)
        }
        else {
            return false
        }
    }
}