//
//  AlarmTableViewCell.swift
//  Alarmony
//
//  Created by Nathan on 2/19/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//

import UIKit

class AlarmTableViewCell: UITableViewCell {

    @IBOutlet weak var alarmBackgroundView: UIView!
    
    
    func configureCell() {
        alarmBackgroundView.layer.cornerRadius = 10
        alarmBackgroundView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        alarmBackgroundView.layer.shadowColor = UIColor.blackColor().CGColor
        alarmBackgroundView.layer.shadowOpacity = 0.5
//        alarmBackgroundView.layer
    }

}
