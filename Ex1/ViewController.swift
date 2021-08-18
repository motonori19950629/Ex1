//
//  ViewController.swift
//  Ex1
//
//  Created by 安井基哲 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {

    //5つの数字を入力するテキストフィールド（nil許容）
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var num3: UITextField!
    @IBOutlet weak var num4: UITextField!
    @IBOutlet weak var num5: UITextField!
    
    //結果を表示するラベル（初期表示は「０」）
    @IBOutlet weak var labelSum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //足し算を実行するボタン
    @IBAction func runSum(_ sender: Any) {
        
        //各String?をint?に変換しintに変換。未入力や文字列が入力された際は０に変換
        let intNum1 = Int(num1.text ?? "") ?? 0
        let intNum2 = Int(num2.text ?? "") ?? 0
        let intNum3 = Int(num3.text ?? "") ?? 0
        let intNum4 = Int(num4.text ?? "") ?? 0
        let intNum5 = Int(num5.text ?? "") ?? 0
    
        //足し算処理：結果は整数型が格納される。
        let intSum = intNum1 + intNum2 + intNum3 + intNum4 +  intNum5
        
        //整数型を文字列に変換し結果をラベルに表示
        labelSum.text = "\(intSum)"
    }


}

