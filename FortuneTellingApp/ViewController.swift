//
//  ViewController.swift
//  FortuneTellingApp
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataPicker: UIDatePicker!
    
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var resultTextView: UITextView!
    
    var sliderNum: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func numSlider(_ sender: UISlider) {
        sliderNum = Int(sender.value)
        numLabel.text = String(sliderNum)
    }
    
    
    @IBAction func fortuneButton(_ sender: UIButton) {
        print(sliderNum)
    
        
    }
    
}

