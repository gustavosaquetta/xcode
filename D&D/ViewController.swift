//
//  ViewController.swift
//  D&D
//
//  Created by Gustavo Saquetta on 03/07/16.
//  Copyright © 2016 sacchetta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forca: UITextField!
    @IBOutlet weak var inteligencia: UITextField!
    @IBOutlet weak var destreza: UITextField!
    
    @IBOutlet weak var d20_value: UILabel!
    @IBOutlet weak var total_value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func on_bt_roll_touch_up_inside(_ sender: AnyObject) {
        var re:Int = self.d20()
        
        while re == 0{
            re = self.d20()
        }
        
        var total:Int = 0

        if !(forca.text?.isEmpty)!{
            total += Int(forca.text!)!
        }
        if !(inteligencia.text?.isEmpty)!{
            total += Int(inteligencia.text!)!
        }
        if !((destreza.text?.isEmpty)!){
            total += Int(destreza.text!)!
        }
        total += re
        
        if re == 1{
            d20_value.text = "\(re) Critical error!!!"
        }
        if re == 20{
            d20_value.text = "\(re) Critical!!!"
        }
        if re != 20 && re != 1{
           d20_value.text = "\(re)"
        }
        
        total_value.text = "\(total)"
        
    }
    
    func d20() -> Int{
        return Int(arc4random_uniform(20))
    }

}

