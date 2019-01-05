//
//  ResultViewController.swift
//  IKAResultApp
//
//  Created by Apple on 2019/01/02.
//  Copyright © 2019年 Baminami. All rights reserved.
//

import UIKit

// リザルト画面
class ResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // 表示するセルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        TestData.setResultDataArray()
        return TestData.resultDataArray.count
    }
    // 表示するセルの内容を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TablePartsCell
        cell.matchResult.text = "テスト"
        return setCellValue(cell: cell, index: indexPath.row)
    }
    
    let label = UILabel()
    // テーブルビューインスタンス作成
    var tableView: UITableView = UITableView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // テーブルビュー初期化、関連付け
        tableView         =   UITableView(frame: self.view.frame, style: UITableView.Style.grouped)
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.register(UINib(nibName: "TablePartsCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        self.view.addSubview(tableView)    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.frame = view.bounds
    }
    // カスタムセルの中身を設定
    func setCellValue(cell: TablePartsCell, index: Int) -> TablePartsCell {
        let setCell = cell
        TestData.setResultDataArray()
        var resultData = TestData.resultDataArray[index]
        setCell.matchResult.text = resultData["matchResult"] as? String
        setCell.playMode.text = resultData["playMode"] as? String
        setCell.stage.text = resultData["stage"] as? String
        setCell.udemae.text = resultData["udemae"] as? String
        setCell.playRule.text = resultData["playRule"] as? String
        setCell.power.text = resultData["power"] as? String
        setCell.kill.text = resultData["kill"] as? String
        setCell.death.text = resultData["death"] as? String
        setCell.weapon.text = resultData["weapon"] as? String
        return setCell
    }
}
