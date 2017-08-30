//
//  ViewController.swift
//  SakuraKitOCForSwiftDemo
//
//  Created by tingxins on 30/08/2017.
//  Copyright © 2017 tingxins. All rights reserved.
//

import UIKit
import SakuraKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UIImageView
        testImageView.sakura.backgroundColor()("Global.backgroundColor")
        testImageView.sakura.image()("Global.backgroundImage")
        
        
        // UILabel
        testLabel.sakura.textColor()("Global.textColor")
        
    }

    @IBAction func switchingSakuraEvent(_ sender: UISwitch) {
        
        let flag = sender.isOn
        if flag {
            TXSakuraManager.shiftSakura(withName: "light", type: .mainBundle)
        }else {
            TXSakuraManager.shiftSakura(withName: kTXSakuraDefault, type: .mainBundle)
        }
        sender.isOn = !sender.isOn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

