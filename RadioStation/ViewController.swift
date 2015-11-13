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
    var myStation2: RadioStation
    
    @IBOutlet var stationName : UILabel!
    @IBOutlet var stationFreq : UILabel!
    @IBOutlet var stationBand : UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        myStation2 = RadioStation()
        myStation2.freq = 125.5
        myStation2.name = "Knix"
        
        myStation = RadioStation()
        myStation.freq = 60
        myStation.name = "Kn0x"
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

    @IBAction func buttonClick(sender: AnyObject) {
        stationName.text = myStation.name
        stationFreq.text = String(format: "%.1f", myStation.freq)
        stationBand.text = "AM"
    }

    @IBAction func button2Click(sender: AnyObject) {
        stationName.text = myStation2.name
        stationFreq.text = String(format: "%.1f", myStation2.freq)
        stationBand.text = "FM"
    }
}

