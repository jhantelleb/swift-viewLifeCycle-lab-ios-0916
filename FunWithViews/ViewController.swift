//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// Declare UIViews and labels
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        
        label1.hidden = true
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    var dieRoll = 0
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        dieRoll = dieRoll + 1
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        return Int(arc4random_uniform(6) + 1)
    }
    
    //hide black squares function
    func rearrangeDie(number:Int){
       
        switch number {
        case 1:
            view4.hidden = false
        case 2:
            view1.hidden = false
            view7.hidden = false
        case 3:
            view1.hidden = false
            view4.hidden = false
            view7.hidden = false
        case 4:
            view1.hidden = false
            view3.hidden = false
            view5.hidden = false
            view7.hidden = false
        case 5:
            view1.hidden = false
            view3.hidden = false
            view4.hidden = false
            view5.hidden = false
            view7.hidden = false
        case 6:
            view1.hidden = false
            view2.hidden = false
            view3.hidden = false
            view5.hidden = false
            view6.hidden = false
            view7.hidden = false
        case 7:
            view1.hidden = false
            view2.hidden = false
            view3.hidden = false
            view4.hidden = false
            view5.hidden = false
            view6.hidden = false
            view1.backgroundColor = UIColor.greenColor()
            view2.backgroundColor = UIColor.greenColor()
            view3.backgroundColor = UIColor.greenColor()
            view4.backgroundColor = UIColor.greenColor()
            view5.backgroundColor = UIColor.greenColor()
            view6.backgroundColor = UIColor.greenColor()
            view7.backgroundColor = UIColor.greenColor()
        default:
            
            view1.hidden = true
            view2.hidden = true
            view3.hidden = true
            view4.hidden = true
            view5.hidden = true
            view6.hidden = true
            view7.hidden = true
            
            label1.hidden = true
            label2.hidden = true
            label3.hidden = true
            label4.hidden = true
            label5.hidden = true
            label6.hidden = true
        }
    }
    
    //Update score labels - check runtime flag
    func updateScore(score:Int){
        
        //var text = "label" + String(dieRoll)
        // = String(number)
        
        switch dieRoll{ //check number
        case 1:
            label1.hidden = false
            label1.text = String(score)
        case 2:
            label2.hidden = false
            label2.text = String(score)
        case 3:
            label3.hidden = false
            label3.text = String(score)
        case 4:
            label4.hidden = false
            label4.text = String(score)
        case 5:
            label5.hidden = false
            label5.text = String(score)
        case 6:
            label6.hidden = false
            label6.text = String(score)
        default: //die Roll more than 6. Reset all parameters
            dieRoll = 0
            view1.hidden = true
            view2.hidden = true
            view3.hidden = true
            view4.hidden = true
            view5.hidden = true
            view6.hidden = true
            view7.hidden = true
            label1.hidden = true
            label2.hidden = true
            label3.hidden = true
            label4.hidden = true
            label5.hidden = true
            label6.hidden = true
        }
    }
    
    // switch number{
    //  case 1:
    //default:
    
    //}

    
    @IBAction func Dice(sender: AnyObject) {
    
        let number = randomDiceRoll()
        rearrangeDie(number)
        updateScore(number)
        
            }
}
