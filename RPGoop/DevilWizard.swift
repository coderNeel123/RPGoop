//
//  DevilWizard.swift
//  RPGoop
//
//  Created by Neel Khattri on 7/21/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import Foundation

class devilWizard: enemy {
    override var loot: [String] {
        get {
            return ["Magic Wand", "Dark Amulet", "Salted Pork"]
        }
        
    }
    override var type: String {
        get{
            return "Devil Wizard"
        }
        
    }
}