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
    @IBOutlet weak var textFieldNum1: UITextField!
    @IBOutlet weak var textFieldNum2: UITextField!
    @IBOutlet weak var textFieldNum3: UITextField!
    @IBOutlet weak var textFieldNum4: UITextField!
    @IBOutlet weak var textFieldNum5: UITextField!
    
    //結果を表示するラベル（初期表示は「０」）
    @IBOutlet weak var labelSum: UILabel!
    
    //足し算を実行するボタン
    @IBAction func runSum(_ sender: Any) {
        
        //各String?をint?に変換しintに変換。未入力や文字列が入力された際は０に変換
        let intNum1 = Int(textFieldNum1.text ?? "") ?? 0
        let intNum2 = Int(textFieldNum2.text ?? "") ?? 0
        let intNum3 = Int(textFieldNum3.text ?? "") ?? 0
        let intNum4 = Int(textFieldNum4.text ?? "") ?? 0
        let intNum5 = Int(textFieldNum5.text ?? "") ?? 0
    
        //足し算処理：結果は整数型が格納される。
        let intSum = intNum1 + intNum2 + intNum3 + intNum4 + intNum5
        
        //整数型を文字列に変換し結果をラベルに表示
        labelSum.text = "\(intSum)"
    }

}

