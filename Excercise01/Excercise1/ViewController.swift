//
//  ViewController.swift
//  Excercise1
//
//  Created by Andrej Antas on 06/01/16.
//  Copyright © 2016 Andrej Antas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bomberman: UIImageView!
    @IBOutlet weak var bomb: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showHideBomb(sender: AnyObject) {
        if bomb.hidden == true {
            bomb.hidden = false
        }
        else {
            bomb.hidden = true
        }
    }

    @IBAction func showHideBomberman(sender: AnyObject) {
        if bomberman.hidden == true {
            bomberman.hidden = false
        }
        else {
            bomberman.hidden = true
        }
    }
}

