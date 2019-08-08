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
    
    
    let pickerData: [String] = [
        "あなたは山に愛されています。\n",
        "あなたは海に愛されています。\n",
        "あなたは川に愛されています。\n",
        "あなたは森に愛されています。\n",
    ]
    
    let bloodData: [String] = [
        "属性は「雷」です。\n",
        "属性は「水」です。\n",
        "属性は「風」です。\n",
        "属性は「草」です。\n",
        "属性は「岩」です。\n",
    ]
    
    let numData: [String] = [
        "努力が報われなかったときは、「自分へのごほうび」とつぶやきながら、ひと口サイズのスイーツを口にして。",
        "探し物を思い浮かべながら、人差し指を7回反時計回りにまわしてみて。",
        "銀製品や銀のアクセサリーをピカピカに磨いてから、バッグに入れたり身につけて。",
        "ふと口をついて出た曲をダウンロードするか、ラジオ番組にリクエストメールを出しましょう。",
        "今日だけ、自分の顔の好きなところにペンシルでほくろを描いてみて。",
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func numSlider(_ sender: UISlider) {
        sliderNum = Int(sender.value)
        numLabel.text = String(sliderNum)
    }
    
    
    @IBAction func fortuneButton(_ sender: UIButton) {
        print(sliderNum)
        print(dataPicker.date)
        
    }
    
}

