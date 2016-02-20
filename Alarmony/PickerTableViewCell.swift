//
//  PickerTableViewCell.swift
//  Alarmony
//
//  Created by Nathan on 2/19/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//

import UIKit

class PickerTableViewCell: UITableViewCell {

    @IBOutlet weak var pickerView: UIDatePicker!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
