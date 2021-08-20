//
//  ViewController.swift
//  Ex1
//
//  Created by 安井基哲 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {

    //5つの数字を入力するテキストフィールド（nil許容）
    //外部からのアクセスはないため、privateは省略
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var num3TextField: UITextField!
    @IBOutlet private weak var num4TextField: UITextField!
    @IBOutlet private weak var num5TextField: UITextField!
    
    //結果を表示するラベル（初期表示は「０」）
    @IBOutlet private weak var sumLabel: UILabel!
    
    //足し算を実行するボタン
    @IBAction private func runSum(_ sender: Any) {
        
        //各String?をint?に変換しintに変換。未入力や文字列が入力された際は０に変換
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0
        let num3 = Int(num3TextField.text ?? "") ?? 0
        let num4 = Int(num4TextField.text ?? "") ?? 0
        let num5 = Int(num5TextField.text ?? "") ?? 0
    
        //足し算処理：結果は整数型が格納される。
        let sum = num1 + num2 + num3 + num4 + num5
        
        //整数型を文字列に変換し結果をラベルに表示
        sumLabel.text = "\(sum)"
    }

}

