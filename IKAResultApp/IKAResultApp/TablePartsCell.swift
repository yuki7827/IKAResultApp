//
//  TablePartsCell.swift
//  IKAResultApp
//
//  Created by Apple on 2019/01/02.
//  Copyright © 2019年 Baminami. All rights reserved.
//

import UIKit

class TablePartsCell: UITableViewCell {

    @IBOutlet weak var matchResult: UILabel!
    @IBOutlet weak var playMode: UILabel!
    @IBOutlet weak var stage: UILabel!
    @IBOutlet weak var udemae: UILabel!
    @IBOutlet weak var playRule: UILabel!
    @IBOutlet weak var power: UILabel!
    @IBOutlet weak var kill: UILabel!
    @IBOutlet weak var death: UILabel!
    @IBOutlet weak var weapon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
