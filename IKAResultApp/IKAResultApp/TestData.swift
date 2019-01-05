//
//  TestData.swift
//  IKAResultApp
//
//  Created by Apple on 2019/01/05.
//  Copyright © 2019年 Baminami. All rights reserved.
//

import UIKit

// テストデータをまとめたクラス
class TestData: UIViewController {
    static var resultDataArray: [[String:Any]] = []
    
    static func setResultDataArray() {
        resultDataArray = []
        resultDataArray.append(setResultData(matchResult: "WIN", playMode: "ガチマッチ", stage: "ハコフグ倉庫", udemae: "X", playRule: "ガチエリア", power: "2140", kill: "23", death: "20", weapon: "スプラローラー"))
        resultDataArray.append(setResultData(matchResult: "LOSE", playMode: "ナワバリバトル", stage: "ホッケふ頭", udemae: "X", playRule: "ガチヤグラ", power: "2140", kill: "23", death: "20", weapon: "スプラローラー"))
        resultDataArray.append(setResultData(matchResult: "WIN", playMode: "リーグマッチ", stage: "ハコフグ倉庫", udemae: "X", playRule: "ガチエリア", power: "3000", kill: "23", death: "4", weapon: "スプラローラー"))
        resultDataArray.append(setResultData(matchResult: "LOSE", playMode: "ガチマッチ", stage: "ハコフグ倉庫", udemae: "C-", playRule: "ガチエリア", power: "2140", kill: "15", death: "20", weapon: "スプラローラー"))
    }
    static func setResultData(matchResult: String ,playMode: String, stage: String, udemae: String, playRule:  String, power: String, kill: String, death: String, weapon: String) -> [String:Any] {
        var resultData: [String:Any] = [:]
        resultData["matchResult"] = matchResult
        resultData["playMode"] = playMode
        resultData["stage"] = stage
        resultData["udemae"] = udemae
        resultData["playRule"] = playRule
        resultData["power"] = power
        resultData["kill"] = kill
        resultData["death"] = death
        resultData["weapon"] = weapon
        
        return resultData
        
    }
    
    
    
}
