//
//  ViewController.swift
//  janken
//
//  Created by 吉田実樹 on 2017/11/15.
//  Copyright © 2017年 吉田実樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aite: UILabel!
    @IBOutlet weak var syouhai: UILabel!
    
    let firstAiteLabel: String = "勝負しよう"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        aite.text = firstAiteLabel
        
        syouhai.text = ""
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        
        let aiteHandType: [String] = ["ぐー", "ちょき", "ぱー"]
        let random = Int(arc4random() % 3)
        let dasitamono = aiteHandType[random]
        
        aite.text = dasitamono
        
        let kekka = (sender.tag - random + 3) % 3
        
        if kekka == 0 {
            syouhai.text = "あいこです。"
        } else if kekka == 1 {
            syouhai.text = "あなたの負けです"
        } else if kekka == 2 {
            syouhai.text = "あなたの勝ちです"
        }
        
    }
    
    @IBAction func onResetButtonTapped(_ sender: UIButton) {
        aite.text = firstAiteLabel
        syouhai.text = ""
    }
    
}

