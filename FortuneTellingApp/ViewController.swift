//
//  ViewController.swift
//  FortuneTellingApp
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// 生年月日を入力するピッカー
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    /// 血液型を入力するピッカー
    @IBOutlet weak var bloodsegment: UISegmentedControl!
    
    /// スライダーの数字を反映するラベル
    @IBOutlet weak var numLabel: UILabel!
    
    /// 占い結果を表示するテキストビュー
    @IBOutlet weak var resultTextView: UITextView!
    
    // スライダーの値を格納する変数
    var sliderNum: Int = 50
    
    // ピッカーの値を変えたときに変更する配列の占いのデータ
    let pickerData: [String] = [
        "あなたは山に愛されています。\n",
        "あなたは海に愛されています。\n",
        "あなたは川に愛されています。\n",
        "あなたは森に愛されています。\n",
    ]
    
    // 血液型を変えたときに変更する配列の占いのデータ
    let bloodData: [String] = [
        "属性は「雷」です。\n",
        "属性は「水」です。\n",
        "属性は「風」です。\n",
        "属性は「草」です。\n",
    ]
    
    // スライダーで好きな数字をかえたときに変更する配列の占いのデータ
    let sliderData: [String] = [
        "努力が報われなかったときは、「自分へのごほうび」とつぶやきながら、ひと口サイズのスイーツを口にして。",
        "探し物を思い浮かべながら、人差し指を7回反時計回りにまわしてみて。",
        "銀製品や銀のアクセサリーをピカピカに磨いてから、バッグに入れたり身につけて。",
        "ふと口をついて出た曲をダウンロードするか、ラジオ番組にリクエストメールを出しましょう。",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // スライダーが呼ばれた時の処理
    @IBAction func numSlider(_ sender: UISlider) {
        // sliderNumにInt型の値を代入
        sliderNum = Int(sender.value)
        
        // numLabelのテキストを反映
        numLabel.text = String(sliderNum)
    }
    
    // Pickerに入れられた値から配列で使うインデックスを返す関数
    fileprivate func setPickerNum() -> Int {
        let date = dataPicker.date
        
        let year = dataPicker.calendar.component(.year, from: date)
        let month = dataPicker.calendar.component(.month, from: date)
        let day = dataPicker.calendar.component(.day, from: date)
        
        let num = ((year + month + day) % 4)
        
        return num
    }
    
    // bloodsegmentに入れられた値から配列で使うインデックスを返す関数
    fileprivate func setBloodNum() -> Int{
        let num = bloodsegment.selectedSegmentIndex
        return num
    }
    
    // numSliderに入れられた値から配列で使うインデックスを返す関数
    fileprivate func setSliderNum() -> Int {
        let num = (sliderNum % 4)
        return num
    }
    
    // resultTextViewに表示する値を決める関数
    fileprivate func setupTextView(picikerNum: Int, bloodNum: Int, sliderNum: Int) -> String {
        return pickerData[picikerNum] + bloodData[bloodNum] + sliderData[sliderNum]
    }
    
    // 占うボタンが押された時に呼び出す処理
    @IBAction func fortuneButton(_ sender: UIButton) {
        
        // resultTextViewにテキストにsetupTextView関数を呼び出してテキストを代入
        resultTextView.text = setupTextView(picikerNum: setPickerNum(), bloodNum: setBloodNum(), sliderNum: setSliderNum())
    }
}

