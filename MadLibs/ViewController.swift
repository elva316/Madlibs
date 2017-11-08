//
//  ViewController.swift
//  MadLibs
//
//  Created by elva wang on 11/8/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    var output: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "..."
    }

    
    @IBAction func unwindfunc (segue:UIStoryboardSegue) {
        print("hello")
        if let controller = segue.source as? SecondViewController {
        
                let t1 = controller.text1.text!
                let t2 = controller.text2.text!
                let t3 = controller.text3.text!
                let t4 = controller.text4.text!

            let str = "We are having a perfectly \(t1) time now.  Later we will \(t2) and \(t3) in the \(t4)."
            outputLabel.text = str
    }
    }
    
}

