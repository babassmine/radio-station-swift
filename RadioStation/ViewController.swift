//
//  ViewController.swift
//  RadioStation
//
//  Created by Abass Sesay on 11/11/15.
//  Copyright © 2015 Abass Sesay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myStation: RadioStation
    
    @IBOutlet var stationName : UILabel!
    @IBOutlet var stationFreq : UILabel!
    @IBOutlet var stationBand : UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        myStation = RadioStation()
        myStation.freq = 125.5
        myStation.name = "Knix"
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

