//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2017/03/10.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //占いボタンが押されたとき
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果を配列で用意する
        var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
        
        //占いの結果をランダムに選ぶための数字を作成
        let r = Int(arc4random()) % omikuji.count
        
        //デバッグエリアに運勢を表示
        print("今日の運勢:\(omikuji[r])")
        
        //アラートを作る
        let alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        //OKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.kekka(resultNumber: r)}))
        
        //アラートを表示
        present(alertController, animated: true, completion: nil)
    }
    
    //関数
    //OKボタンが押されたとき発動
    // kekka:関数名
    // resultNumber:引数（処理をするために必要な情報）
    func kekka(resultNumber:Int){
        // resultNumber = おみくじをランダムに決定する数字
        print("おみくじ番号\(resultNumber)")
        
        // TODO:OKが押された時に、各運勢に紐付いた画像を表示しましょう
        switch resultNumber {
        case 0:
            //大吉
            print("大吉")
        case 1:
            print("吉")
            
        case 2:
            print("中吉")
            
        case 3:
            print("小吉")
            
        default:
            print("その他")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

