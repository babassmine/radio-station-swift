//
//  RadioStation.swift
//  RadioStation
//
//  Created by Abass Sesay on 11/11/15.
//  Copyright © 2015 Abass Sesay. All rights reserved.
//

import Foundation

class RadioStation {
    var name: String
    var freq: Double
    
    init(){
        name = "Default"
        freq = 100
    }
    
    class func minAMFrequency() -> Double {
        return 520.0
    }
    
    class func maxAMFrequency() -> Double {
        return 1610.0
    }
    
    class func maxFMFrequency() -> Double {
        return 88.3
    }
    
    class func minFMFrequency() -> Double {
        return 107.9
    }
    
    func band() -> Int {
        if freq >= RadioStation.minFMFrequency() && freq <= RadioStation.maxFMFrequency(){
            return 1 //FM
        }else {
            return 0 //AM
        }
    }
}