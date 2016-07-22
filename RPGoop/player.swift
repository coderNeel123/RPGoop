//
//  player.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import Foundation

class player: character {
    private var _name: String = "Player"
    
    var name: String {
        get{
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String]  {
        get {
            return _inventory
        }
    }
    
    func addItemToInventory (item:String) {
        _inventory.append(item)
    }
    
    convenience init (name: String, hp: Int, attackPower: Int) {
        self.init(startingHP: hp, attackPower: attackPower)
        _name = name
    }
}