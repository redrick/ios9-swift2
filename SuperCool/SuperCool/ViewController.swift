//
//  ViewController.swift
//  SuperCool
//
//  Created by Andrej Antas on 05/01/16.
//  Copyright © 2016 Andrej Antas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CoolLogo: UIImageView!
    @IBOutlet weak var CoolBg: UIImageView!
    @IBOutlet weak var uncoolButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func makeMeNotSoUncool(sender: AnyObject) {
        CoolLogo.hidden = false
        CoolBg.hidden = false
        uncoolButton.hidden = true
    }
}

