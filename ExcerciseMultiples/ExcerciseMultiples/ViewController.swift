//
//  ViewController.swift
//  ExcerciseMultiples
//
//  Created by Andrej Antas on 09/01/16.
//  Copyright © 2016 Andrej Antas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var addNumberText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var addingLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    var chosenNumber: Int = 0
    var previousProduct: Int = 0
    var currentProduct: Int = 0
    
    @IBAction func playBtnClicked(sender: UIButton) {
        previousProduct = 0
        currentProduct = 0
        if addNumberText.text != nil && addNumberText.text != "" {
            Logo.hidden = true
            addNumberText.hidden = true
            playBtn.hidden = true
            
            addingLbl.hidden = false
            addBtn.hidden = false
            
            chosenNumber = Int(addNumberText.text!)!
        }
    }
    
    @IBAction func addBtnClicked(sender: UIButton) {
        currentProduct = previousProduct + chosenNumber
        addingLbl.text = "\(previousProduct) + \(chosenNumber) = \(currentProduct)"
        previousProduct = currentProduct
        
        if shouldEnd() {
            Logo.hidden = false
            addNumberText.hidden = false
            playBtn.hidden = false
            
            addingLbl.hidden = true
            addBtn.hidden = true
            
            addNumberText.text = ""
            addingLbl.text = "Press ADD to add!"
        }
    }
    
    func shouldEnd() -> Bool {
        let maxValue = 7 * chosenNumber
        if previousProduct >= maxValue {
            return true
        } else {
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

