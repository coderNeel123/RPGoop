//
//  Character.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import Foundation

class character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get{
            return _attackPower
        }
    }
    
    var hp: Int {
        get{
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp<=0 {
                return false
            }
            else {
                return true
            }
        }
    }
    
    init(startingHP: Int, attackPower: Int) {
        self._hp = startingHP
        self._attackPower = attackPower
    }
    
    func attemptAttack (attackPower:Int) -> Bool {
        self._hp -= attackPower
        return true
    }
}
